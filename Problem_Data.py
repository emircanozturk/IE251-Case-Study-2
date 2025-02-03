import numpy as np

I = np.arange(1,6) #components
J = np.arange(1,4) #cities
T = np.arange(1,3) #month
K = np.arange(1,7) #products


labor_req_list = [1, 1.5, 1.5, 3, 4,
                  3.5, 3.5, 4.5, 4.5, 5,
                  3, 3.5, 4, 4.5, 5.5,
                  1, 1.5, 1.5, 3, 4,
                  3.5, 3.5, 4.5, 4.5, 5,
                  3, 3.5, 4, 4.5, 5.5,]

packaging_min_list = [4, 4, 5, 6, 6, 7, 7, 8, 9, 7, 7.5, 7.5, 8.5, 8.5, 8,
                      4, 4, 5, 6, 6, 7, 7, 8, 9, 7, 7.5, 7.5, 8.5, 8.5, 8]

labor_limit_list = [12000, 15000, 22000,
                    12000, 15000, 22000]

packaging_limit_list = [20000, 40000, 35000,
                      20000, 40000, 35000]

assembly_time_list = [65, 60, 65,
                      65, 60, 65]

assembly_time_limit_list = [5500, 5000, 6000,
                            5500, 5000, 6000]

min_demand_list = [0, 100, 200, 30, 100, 0,
                   0, 100, 200, 30, 100, 0,
                   0, 50, 100, 15, 100, 0,
                   0, 100, 200, 30, 100, 0,
                   0, 100, 200, 30, 100, 0,
                   0, 50, 100, 15, 100, 0]

max_demand_list = [2000, 2000, 2000, 2000, 2000, 200,
                   2000, 2000, 2000, 2000, 2000, 200,
                   2000, 2000, 2000, 2000, 2000, 200,
                   2000, 2000, 2000, 2000, 2000, 200,
                   2000, 2000, 2000, 2000, 2000, 200,
                   2000, 2000, 2000, 2000, 2000, 200]


prod_cost_list = [6, 19, 4, 10, 26, 178,
                  5, 18, 5, 11, 24, 175,
                  7, 20, 5, 12, 27, 180]
prod_cost_list2 = [x * 1.12 for x in prod_cost_list]
for x in prod_cost_list2:
    prod_cost_list.append(x)


price_list = [10, 25, 8, 18, 40, 290,
              10, 25, 8, 18, 40, 290,
              12, 30, 10, 22, 45, 310,
              10, 25, 8, 18, 40, 290,
              10, 25, 8, 18, 40, 290,
              12, 30, 10, 22, 45, 310]

inv_cost_list = np.array(prod_cost_list) * 0.08


rob_kit_req_list = [13, 13, 10, 3, 3,
                    13, 13, 10, 3, 3]


labor_req_dict = {}
n = 0
while len(labor_req_dict) < len(labor_req_list):
    for t in T:
        for j in J:
            for i in I:
                labor_req_dict[t,j,i] = labor_req_list[n]
                n += 1
    
packaging_min_dict = {}
n = 0
while len(packaging_min_dict) < len(packaging_min_list):
    for t in T:
        for j in J:
            for i in I:
                packaging_min_dict[t,j,i] = packaging_min_list[n]
                n += 1  

labor_limit_dict = {}
n = 0
while len(labor_limit_dict) < len(labor_limit_list):
    for t in T:
        for j in J:
            labor_limit_dict[t,j] = labor_limit_list[n]
            n += 1
    
packaging_limit_dict = {}
n = 0
while len(packaging_limit_dict) < len(packaging_limit_list):
    for t in T:
        for j in J:
            packaging_limit_dict[t,j] = packaging_limit_list[n]
            n += 1

assembly_time_dict = {}
n = 0
while len(assembly_time_dict) < len(assembly_time_list):
    for t in T:
        for j in J:
            assembly_time_dict[t,j] = assembly_time_list[n]
            n += 1

assembly_time_limit_dict = {}
n = 0
while len(assembly_time_limit_dict) < len(assembly_time_limit_list):
    for t in T:
        for j in J:
            assembly_time_limit_dict[t,j] = assembly_time_limit_list[n]
            n += 1

min_demand_dict = {}
n = 0
while len(min_demand_dict) < len(min_demand_list):
    for t in T:
        for j in J:
            for k in K:
                min_demand_dict[t,j,k] = min_demand_list[n]
                n += 1

max_demand_dict = {}
n = 0
while len(max_demand_dict) < len(max_demand_list):
    for t in T:
        for j in J:
            for k in K:
                max_demand_dict[t,j,k] = max_demand_list[n]
                n += 1
                
prod_cost_dict = {}
n = 0
while len(prod_cost_dict) < len(prod_cost_list):
    for t in T:
        for j in J:
            for k in K:
                prod_cost_dict[t,j,k] = prod_cost_list[n]
                n += 1

price_dict = {}
n = 0
while len(price_dict) < len(price_list):
    for t in T:
        for j in J:
            for k in K:
                price_dict[t,j,k] = price_list[n]
                n += 1

inv_cost_dict = {}
n = 0
while len(inv_cost_dict) < len(inv_cost_list):
    for t in T:
        for j in J:
            for k in K:
                inv_cost_dict[t,j,k] = inv_cost_list[n]
                n += 1

rob_kit_req_dict = {}
n = 0
while len(rob_kit_req_dict) < len(rob_kit_req_list):
    for t in T:
        for i in I:
            rob_kit_req_dict[t,i] = rob_kit_req_list[n]
            n += 1
