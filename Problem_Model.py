import numpy as np
import pyomo.environ as pyo
from pyomo.opt import SolverFactory
import Problem_Data

# Model
model = pyo.ConcreteModel("LP-Model")

# Sets
model.I = pyo.Set(initialize=Problem_Data.I,
                  doc="Components")
model.J = pyo.Set(initialize=Problem_Data.J,
                  doc="Cities")
model.T = pyo.Set(initialize=Problem_Data.T,
                  doc="Months")
model.K = pyo.Set(initialize=Problem_Data.K,
                  doc="Products")

# Parameters
model.pL = pyo.Param(model.T, model.J, model.I,
                     initialize=Problem_Data.labor_req_dict,
                     doc="Labor Requirement(minutes/unit)")
model.pP = pyo.Param(model.T, model.J, model.I,
                     initialize=Problem_Data.packaging_min_dict,
                     doc="Packaging Time(minutes/unit)")
model.pH = pyo.Param(model.T, model.J,
                     initialize=Problem_Data.labor_limit_dict,
                     doc="Labor Time Availability(minutes)")
model.pG = pyo.Param(model.T, model.J,
                     initialize=Problem_Data.packaging_limit_dict,
                     doc="Packaging Time Availability(minutes)")
model.pA = pyo.Param(model.T, model.J,
                     initialize=Problem_Data.assembly_time_dict,
                     doc="Assembly Time(minutes/set)")
model.pB = pyo.Param(model.T, model.J,
                     initialize=Problem_Data.assembly_time_limit_dict,
                     doc="Assembly Time Available(minute)")
model.pD = pyo.Param(model.T, model.J, model.K,
                     initialize=Problem_Data.min_demand_dict,
                     doc="Minimum Demand of Products")
model.pE = pyo.Param(model.T, model.J, model.K,
                     initialize=Problem_Data.max_demand_dict,
                     doc="Maximum Demand of Products")
model.pC = pyo.Param(model.T, model.J, model.K,
                     initialize=Problem_Data.prod_cost_dict,
                     doc="Production Cost($/unit)")
model.pT = pyo.Param(model.T, model.J, model.K,
                     initialize=Problem_Data.price_dict,
                     doc="Selling Price($/unit)")
model.pV = pyo.Param(model.T, model.J, model.K,
                     initialize=Problem_Data.inv_cost_dict,
                     doc="Inventory Cost($/unit)")
model.pR = pyo.Param(model.T, model.I,
                     initialize=Problem_Data.rob_kit_req_dict,
                     doc="Component Requirements of Robotic Kit")

# Decision Variables
model.vX = pyo.Var(model.T, model.J, model.I,
                   within=pyo.NonNegativeReals,
                   doc="Amount i manufactured at city j at month t")
model.vY = pyo.Var(model.T, model.J, model.K,
                   within=pyo.NonNegativeReals,
                   doc="Amount k produced at city j at month t")
model.vZ = pyo.Var(model.T, model.J, model.K,
                   within=pyo.NonNegativeReals,
                   doc="Amount k sold at city j at month t")
model.vQ = pyo.Var(model.T, model.J, model.K,
                   within=pyo.NonNegativeReals,
                   doc="Amount k in the inventory at the end of the month t in city j")

# Constraints
def eBalanceCompProd(model,i,j,t,k):
    if (i,k) in [(1,1),(2,2),(3,3),(4,4),(5,5)]:
        return model.vX[t,j,i] == model.vY[t,j,k] + model.vY[t,j,6] * model.pR[t,i]
    else:
        return pyo.Constraint.NoConstraint
model.eBalanceCompProd = pyo.Constraint(model.I, model.J, model.T, model.K,
                                        rule=eBalanceCompProd,
                                        doc="Balance constraint for amounts of components and products")

def eBalanceProdInvSales(model,t,j,k):
    if t == 1:
        return model.vY[t,j,k] == model.vZ[t,j,k] + model.vQ[t,j,k]
    else:
        return model.vQ[t-1,j,k] + model.vY[t,j,k] == model.vZ[t,j,k] + model.vQ[t,j,k]
model.eBalanceProdInvSales = pyo.Constraint(model.T, model.J, model.K,
                                            rule=eBalanceProdInvSales,
                                            doc="Balance constraint for products, inventory and sales")

def eLaborLimit(model,t,j):
    return sum(model.vX[t,j,i] * model.pL[t,j,i] for i in model.I) <= model.pH[t,j]
model.eLaborLimit = pyo.Constraint(model.T, model.J,
                                   rule=eLaborLimit,
                                   doc="Labor availability constraint")

def ePackagingLimit(model,t,j):
    return sum(model.vX[t,j,i] * model.pP[t,j,i] for i in model.I) <= model.pG[t,j]
model.ePackagingLimit = pyo.Constraint(model.T, model.J,
                                       rule=ePackagingLimit,
                                       doc="Packaging time availability constraint")

def eAssemblyTimeLimit(model,t,j):
    return model.vY[t,j,6] * model.pA[t,j] <= model.pB[t,j]
model.eAssemblyTimeLimit = pyo.Constraint(model.T, model.J,
                                          rule=eAssemblyTimeLimit,
                                          doc="Assembly time availability constraint")

def eCarbonFibCapacity(model,t):
    return sum(model.vX[t,j,2] * 0.25 for j in model.J) <= 1000
model.eCarbonFibCapacity = pyo.Constraint(model.T,
                                          rule=eCarbonFibCapacity,
                                          doc="Amount carbon fiber capacity constraint")

def eMinDemand(model,t,j,k):
    return model.vZ[t,j,k] >= model.pD[t,j,k]
model.eMinDemand = pyo.Constraint(model.T, model.J, model.K,
                                  rule=eMinDemand,
                                  doc="Minimum demand constraint")

def eMaxDemand(model,t,j,k):
    return model.vZ[t,j,k] <= model.pE[t,j,k]
model.eMaxDemand = pyo.Constraint(model.T, model.J, model.K,
                                  rule=eMaxDemand,
                                  doc="Maximum demand constraint")

# Objective Function
def oTotalProfit(model):
    return sum(model.vZ[t,j,k] * model.pT[t,j,k] - model.vY[t,j,k] * model.pC[t,j,k] - model.vQ[t,j,k] * model.pV[t,j,k] for t in model.T for j in model.J for k in model.K)
model.oTotalProfit = pyo.Objective(rule=oTotalProfit,
                                   sense=pyo.maximize,
                                   doc="Total Profit")


#Export the open form of the model with the user defined labels
model.write('model_labels.lp', io_options={'symbolic_solver_labels': True})
#Export the open form of the model without the user defined labels
model.write('model_nolabels.lp', io_options={'symbolic_solver_labels': False})

#shadow prices of the constraints
model.dual = pyo.Suffix(direction=pyo.Suffix.IMPORT) 
#reduced costs of the objective function coefficients
model.rc = pyo.Suffix(direction=pyo.Suffix.IMPORT) 
#Assign GLPK as the solver
Solver = SolverFactory('glpk')
#Print the sensitivity analysis and output report 
Solver.options['ranges']= r'Z:\SA_Report.txt'

# tee=True keyword argument tells Pyomo to print the solver’s execution trace to the terminal
SolverResults = Solver.solve(model, tee=True)
SolverResults.write()
model.pprint() 
model.vX.display()
model.vY.display()
model.vZ.display()
model.vQ.display()
model.oTotalProfit.display()

import pyomo_sens_analysis_v2 as pyo_SA
pyo_SA.reorganize_SA_report(file_path_SA = r'Z:\SA_Report.txt', \
                            file_path_LP_labels = r'Z:\model_labels.lp', \
                                file_path_LP_nolabels = r'Z:\model_nolabels.lp')