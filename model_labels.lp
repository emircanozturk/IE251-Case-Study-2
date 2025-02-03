\* Source Pyomo model name=LP-Model *\

max 
oTotalProfit:
+10 vZ(1_1_1)
+25 vZ(1_1_2)
+8 vZ(1_1_3)
+18 vZ(1_1_4)
+40 vZ(1_1_5)
+290 vZ(1_1_6)
+10 vZ(1_2_1)
+25 vZ(1_2_2)
+8 vZ(1_2_3)
+18 vZ(1_2_4)
+40 vZ(1_2_5)
+290 vZ(1_2_6)
+12 vZ(1_3_1)
+30 vZ(1_3_2)
+10 vZ(1_3_3)
+22 vZ(1_3_4)
+45 vZ(1_3_5)
+310 vZ(1_3_6)
+10 vZ(2_1_1)
+25 vZ(2_1_2)
+8 vZ(2_1_3)
+18 vZ(2_1_4)
+40 vZ(2_1_5)
+290 vZ(2_1_6)
+10 vZ(2_2_1)
+25 vZ(2_2_2)
+8 vZ(2_2_3)
+18 vZ(2_2_4)
+40 vZ(2_2_5)
+290 vZ(2_2_6)
+12 vZ(2_3_1)
+30 vZ(2_3_2)
+10 vZ(2_3_3)
+22 vZ(2_3_4)
+45 vZ(2_3_5)
+310 vZ(2_3_6)
-6 vY(1_1_1)
-19 vY(1_1_2)
-4 vY(1_1_3)
-10 vY(1_1_4)
-26 vY(1_1_5)
-178 vY(1_1_6)
-5 vY(1_2_1)
-18 vY(1_2_2)
-5 vY(1_2_3)
-11 vY(1_2_4)
-24 vY(1_2_5)
-175 vY(1_2_6)
-7 vY(1_3_1)
-20 vY(1_3_2)
-5 vY(1_3_3)
-12 vY(1_3_4)
-27 vY(1_3_5)
-180 vY(1_3_6)
-6.720000000000001 vY(2_1_1)
-21.28 vY(2_1_2)
-4.48 vY(2_1_3)
-11.200000000000001 vY(2_1_4)
-29.120000000000005 vY(2_1_5)
-199.36 vY(2_1_6)
-5.6000000000000005 vY(2_2_1)
-20.160000000000004 vY(2_2_2)
-5.6000000000000005 vY(2_2_3)
-12.32 vY(2_2_4)
-26.880000000000003 vY(2_2_5)
-196.00000000000003 vY(2_2_6)
-7.840000000000001 vY(2_3_1)
-22.400000000000002 vY(2_3_2)
-5.6000000000000005 vY(2_3_3)
-13.440000000000001 vY(2_3_4)
-30.240000000000002 vY(2_3_5)
-201.60000000000002 vY(2_3_6)
-0.48 vQ(1_1_1)
-1.52 vQ(1_1_2)
-0.32 vQ(1_1_3)
-0.8 vQ(1_1_4)
-2.08 vQ(1_1_5)
-14.24 vQ(1_1_6)
-0.4 vQ(1_2_1)
-1.44 vQ(1_2_2)
-0.4 vQ(1_2_3)
-0.88 vQ(1_2_4)
-1.92 vQ(1_2_5)
-14.0 vQ(1_2_6)
-0.56 vQ(1_3_1)
-1.6 vQ(1_3_2)
-0.4 vQ(1_3_3)
-0.96 vQ(1_3_4)
-2.16 vQ(1_3_5)
-14.4 vQ(1_3_6)
-0.5376000000000001 vQ(2_1_1)
-1.7024000000000001 vQ(2_1_2)
-0.35840000000000005 vQ(2_1_3)
-0.8960000000000001 vQ(2_1_4)
-2.3296000000000006 vQ(2_1_5)
-15.948800000000002 vQ(2_1_6)
-0.44800000000000006 vQ(2_2_1)
-1.6128000000000002 vQ(2_2_2)
-0.44800000000000006 vQ(2_2_3)
-0.9856 vQ(2_2_4)
-2.1504000000000003 vQ(2_2_5)
-15.680000000000003 vQ(2_2_6)
-0.6272000000000001 vQ(2_3_1)
-1.7920000000000003 vQ(2_3_2)
-0.44800000000000006 vQ(2_3_3)
-1.0752000000000002 vQ(2_3_4)
-2.4192 vQ(2_3_5)
-16.128000000000004 vQ(2_3_6)

s.t.

c_e_eBalanceCompProd(1_1_1_1)_:
-1 vY(1_1_1)
-13 vY(1_1_6)
+1 vX(1_1_1)
= 0

c_e_eBalanceCompProd(1_1_2_1)_:
-1 vY(2_1_1)
-13 vY(2_1_6)
+1 vX(2_1_1)
= 0

c_e_eBalanceCompProd(1_2_1_1)_:
-1 vY(1_2_1)
-13 vY(1_2_6)
+1 vX(1_2_1)
= 0

c_e_eBalanceCompProd(1_2_2_1)_:
-1 vY(2_2_1)
-13 vY(2_2_6)
+1 vX(2_2_1)
= 0

c_e_eBalanceCompProd(1_3_1_1)_:
-1 vY(1_3_1)
-13 vY(1_3_6)
+1 vX(1_3_1)
= 0

c_e_eBalanceCompProd(1_3_2_1)_:
-1 vY(2_3_1)
-13 vY(2_3_6)
+1 vX(2_3_1)
= 0

c_e_eBalanceCompProd(2_1_1_2)_:
-1 vY(1_1_2)
-13 vY(1_1_6)
+1 vX(1_1_2)
= 0

c_e_eBalanceCompProd(2_1_2_2)_:
-1 vY(2_1_2)
-13 vY(2_1_6)
+1 vX(2_1_2)
= 0

c_e_eBalanceCompProd(2_2_1_2)_:
-1 vY(1_2_2)
-13 vY(1_2_6)
+1 vX(1_2_2)
= 0

c_e_eBalanceCompProd(2_2_2_2)_:
-1 vY(2_2_2)
-13 vY(2_2_6)
+1 vX(2_2_2)
= 0

c_e_eBalanceCompProd(2_3_1_2)_:
-1 vY(1_3_2)
-13 vY(1_3_6)
+1 vX(1_3_2)
= 0

c_e_eBalanceCompProd(2_3_2_2)_:
-1 vY(2_3_2)
-13 vY(2_3_6)
+1 vX(2_3_2)
= 0

c_e_eBalanceCompProd(3_1_1_3)_:
-1 vY(1_1_3)
-10 vY(1_1_6)
+1 vX(1_1_3)
= 0

c_e_eBalanceCompProd(3_1_2_3)_:
-1 vY(2_1_3)
-10 vY(2_1_6)
+1 vX(2_1_3)
= 0

c_e_eBalanceCompProd(3_2_1_3)_:
-1 vY(1_2_3)
-10 vY(1_2_6)
+1 vX(1_2_3)
= 0

c_e_eBalanceCompProd(3_2_2_3)_:
-1 vY(2_2_3)
-10 vY(2_2_6)
+1 vX(2_2_3)
= 0

c_e_eBalanceCompProd(3_3_1_3)_:
-1 vY(1_3_3)
-10 vY(1_3_6)
+1 vX(1_3_3)
= 0

c_e_eBalanceCompProd(3_3_2_3)_:
-1 vY(2_3_3)
-10 vY(2_3_6)
+1 vX(2_3_3)
= 0

c_e_eBalanceCompProd(4_1_1_4)_:
-1 vY(1_1_4)
-3 vY(1_1_6)
+1 vX(1_1_4)
= 0

c_e_eBalanceCompProd(4_1_2_4)_:
-1 vY(2_1_4)
-3 vY(2_1_6)
+1 vX(2_1_4)
= 0

c_e_eBalanceCompProd(4_2_1_4)_:
-1 vY(1_2_4)
-3 vY(1_2_6)
+1 vX(1_2_4)
= 0

c_e_eBalanceCompProd(4_2_2_4)_:
-1 vY(2_2_4)
-3 vY(2_2_6)
+1 vX(2_2_4)
= 0

c_e_eBalanceCompProd(4_3_1_4)_:
-1 vY(1_3_4)
-3 vY(1_3_6)
+1 vX(1_3_4)
= 0

c_e_eBalanceCompProd(4_3_2_4)_:
-1 vY(2_3_4)
-3 vY(2_3_6)
+1 vX(2_3_4)
= 0

c_e_eBalanceCompProd(5_1_1_5)_:
-1 vY(1_1_5)
-3 vY(1_1_6)
+1 vX(1_1_5)
= 0

c_e_eBalanceCompProd(5_1_2_5)_:
-1 vY(2_1_5)
-3 vY(2_1_6)
+1 vX(2_1_5)
= 0

c_e_eBalanceCompProd(5_2_1_5)_:
-1 vY(1_2_5)
-3 vY(1_2_6)
+1 vX(1_2_5)
= 0

c_e_eBalanceCompProd(5_2_2_5)_:
-1 vY(2_2_5)
-3 vY(2_2_6)
+1 vX(2_2_5)
= 0

c_e_eBalanceCompProd(5_3_1_5)_:
-1 vY(1_3_5)
-3 vY(1_3_6)
+1 vX(1_3_5)
= 0

c_e_eBalanceCompProd(5_3_2_5)_:
-1 vY(2_3_5)
-3 vY(2_3_6)
+1 vX(2_3_5)
= 0

c_e_eBalanceProdInvSales(1_1_1)_:
-1 vZ(1_1_1)
+1 vY(1_1_1)
-1 vQ(1_1_1)
= 0

c_e_eBalanceProdInvSales(1_1_2)_:
-1 vZ(1_1_2)
+1 vY(1_1_2)
-1 vQ(1_1_2)
= 0

c_e_eBalanceProdInvSales(1_1_3)_:
-1 vZ(1_1_3)
+1 vY(1_1_3)
-1 vQ(1_1_3)
= 0

c_e_eBalanceProdInvSales(1_1_4)_:
-1 vZ(1_1_4)
+1 vY(1_1_4)
-1 vQ(1_1_4)
= 0

c_e_eBalanceProdInvSales(1_1_5)_:
-1 vZ(1_1_5)
+1 vY(1_1_5)
-1 vQ(1_1_5)
= 0

c_e_eBalanceProdInvSales(1_1_6)_:
-1 vZ(1_1_6)
+1 vY(1_1_6)
-1 vQ(1_1_6)
= 0

c_e_eBalanceProdInvSales(1_2_1)_:
-1 vZ(1_2_1)
+1 vY(1_2_1)
-1 vQ(1_2_1)
= 0

c_e_eBalanceProdInvSales(1_2_2)_:
-1 vZ(1_2_2)
+1 vY(1_2_2)
-1 vQ(1_2_2)
= 0

c_e_eBalanceProdInvSales(1_2_3)_:
-1 vZ(1_2_3)
+1 vY(1_2_3)
-1 vQ(1_2_3)
= 0

c_e_eBalanceProdInvSales(1_2_4)_:
-1 vZ(1_2_4)
+1 vY(1_2_4)
-1 vQ(1_2_4)
= 0

c_e_eBalanceProdInvSales(1_2_5)_:
-1 vZ(1_2_5)
+1 vY(1_2_5)
-1 vQ(1_2_5)
= 0

c_e_eBalanceProdInvSales(1_2_6)_:
-1 vZ(1_2_6)
+1 vY(1_2_6)
-1 vQ(1_2_6)
= 0

c_e_eBalanceProdInvSales(1_3_1)_:
-1 vZ(1_3_1)
+1 vY(1_3_1)
-1 vQ(1_3_1)
= 0

c_e_eBalanceProdInvSales(1_3_2)_:
-1 vZ(1_3_2)
+1 vY(1_3_2)
-1 vQ(1_3_2)
= 0

c_e_eBalanceProdInvSales(1_3_3)_:
-1 vZ(1_3_3)
+1 vY(1_3_3)
-1 vQ(1_3_3)
= 0

c_e_eBalanceProdInvSales(1_3_4)_:
-1 vZ(1_3_4)
+1 vY(1_3_4)
-1 vQ(1_3_4)
= 0

c_e_eBalanceProdInvSales(1_3_5)_:
-1 vZ(1_3_5)
+1 vY(1_3_5)
-1 vQ(1_3_5)
= 0

c_e_eBalanceProdInvSales(1_3_6)_:
-1 vZ(1_3_6)
+1 vY(1_3_6)
-1 vQ(1_3_6)
= 0

c_e_eBalanceProdInvSales(2_1_1)_:
-1 vZ(2_1_1)
+1 vY(2_1_1)
+1 vQ(1_1_1)
-1 vQ(2_1_1)
= 0

c_e_eBalanceProdInvSales(2_1_2)_:
-1 vZ(2_1_2)
+1 vY(2_1_2)
+1 vQ(1_1_2)
-1 vQ(2_1_2)
= 0

c_e_eBalanceProdInvSales(2_1_3)_:
-1 vZ(2_1_3)
+1 vY(2_1_3)
+1 vQ(1_1_3)
-1 vQ(2_1_3)
= 0

c_e_eBalanceProdInvSales(2_1_4)_:
-1 vZ(2_1_4)
+1 vY(2_1_4)
+1 vQ(1_1_4)
-1 vQ(2_1_4)
= 0

c_e_eBalanceProdInvSales(2_1_5)_:
-1 vZ(2_1_5)
+1 vY(2_1_5)
+1 vQ(1_1_5)
-1 vQ(2_1_5)
= 0

c_e_eBalanceProdInvSales(2_1_6)_:
-1 vZ(2_1_6)
+1 vY(2_1_6)
+1 vQ(1_1_6)
-1 vQ(2_1_6)
= 0

c_e_eBalanceProdInvSales(2_2_1)_:
-1 vZ(2_2_1)
+1 vY(2_2_1)
+1 vQ(1_2_1)
-1 vQ(2_2_1)
= 0

c_e_eBalanceProdInvSales(2_2_2)_:
-1 vZ(2_2_2)
+1 vY(2_2_2)
+1 vQ(1_2_2)
-1 vQ(2_2_2)
= 0

c_e_eBalanceProdInvSales(2_2_3)_:
-1 vZ(2_2_3)
+1 vY(2_2_3)
+1 vQ(1_2_3)
-1 vQ(2_2_3)
= 0

c_e_eBalanceProdInvSales(2_2_4)_:
-1 vZ(2_2_4)
+1 vY(2_2_4)
+1 vQ(1_2_4)
-1 vQ(2_2_4)
= 0

c_e_eBalanceProdInvSales(2_2_5)_:
-1 vZ(2_2_5)
+1 vY(2_2_5)
+1 vQ(1_2_5)
-1 vQ(2_2_5)
= 0

c_e_eBalanceProdInvSales(2_2_6)_:
-1 vZ(2_2_6)
+1 vY(2_2_6)
+1 vQ(1_2_6)
-1 vQ(2_2_6)
= 0

c_e_eBalanceProdInvSales(2_3_1)_:
-1 vZ(2_3_1)
+1 vY(2_3_1)
+1 vQ(1_3_1)
-1 vQ(2_3_1)
= 0

c_e_eBalanceProdInvSales(2_3_2)_:
-1 vZ(2_3_2)
+1 vY(2_3_2)
+1 vQ(1_3_2)
-1 vQ(2_3_2)
= 0

c_e_eBalanceProdInvSales(2_3_3)_:
-1 vZ(2_3_3)
+1 vY(2_3_3)
+1 vQ(1_3_3)
-1 vQ(2_3_3)
= 0

c_e_eBalanceProdInvSales(2_3_4)_:
-1 vZ(2_3_4)
+1 vY(2_3_4)
+1 vQ(1_3_4)
-1 vQ(2_3_4)
= 0

c_e_eBalanceProdInvSales(2_3_5)_:
-1 vZ(2_3_5)
+1 vY(2_3_5)
+1 vQ(1_3_5)
-1 vQ(2_3_5)
= 0

c_e_eBalanceProdInvSales(2_3_6)_:
-1 vZ(2_3_6)
+1 vY(2_3_6)
+1 vQ(1_3_6)
-1 vQ(2_3_6)
= 0

c_u_eLaborLimit(1_1)_:
+1 vX(1_1_1)
+1.5 vX(1_1_2)
+1.5 vX(1_1_3)
+3 vX(1_1_4)
+4 vX(1_1_5)
<= 12000

c_u_eLaborLimit(1_2)_:
+3.5 vX(1_2_1)
+3.5 vX(1_2_2)
+4.5 vX(1_2_3)
+4.5 vX(1_2_4)
+5 vX(1_2_5)
<= 15000

c_u_eLaborLimit(1_3)_:
+3 vX(1_3_1)
+3.5 vX(1_3_2)
+4 vX(1_3_3)
+4.5 vX(1_3_4)
+5.5 vX(1_3_5)
<= 22000

c_u_eLaborLimit(2_1)_:
+1 vX(2_1_1)
+1.5 vX(2_1_2)
+1.5 vX(2_1_3)
+3 vX(2_1_4)
+4 vX(2_1_5)
<= 12000

c_u_eLaborLimit(2_2)_:
+3.5 vX(2_2_1)
+3.5 vX(2_2_2)
+4.5 vX(2_2_3)
+4.5 vX(2_2_4)
+5 vX(2_2_5)
<= 15000

c_u_eLaborLimit(2_3)_:
+3 vX(2_3_1)
+3.5 vX(2_3_2)
+4 vX(2_3_3)
+4.5 vX(2_3_4)
+5.5 vX(2_3_5)
<= 22000

c_u_ePackagingLimit(1_1)_:
+4 vX(1_1_1)
+4 vX(1_1_2)
+5 vX(1_1_3)
+6 vX(1_1_4)
+6 vX(1_1_5)
<= 20000

c_u_ePackagingLimit(1_2)_:
+7 vX(1_2_1)
+7 vX(1_2_2)
+8 vX(1_2_3)
+9 vX(1_2_4)
+7 vX(1_2_5)
<= 40000

c_u_ePackagingLimit(1_3)_:
+7.5 vX(1_3_1)
+7.5 vX(1_3_2)
+8.5 vX(1_3_3)
+8.5 vX(1_3_4)
+8 vX(1_3_5)
<= 35000

c_u_ePackagingLimit(2_1)_:
+4 vX(2_1_1)
+4 vX(2_1_2)
+5 vX(2_1_3)
+6 vX(2_1_4)
+6 vX(2_1_5)
<= 20000

c_u_ePackagingLimit(2_2)_:
+7 vX(2_2_1)
+7 vX(2_2_2)
+8 vX(2_2_3)
+9 vX(2_2_4)
+7 vX(2_2_5)
<= 40000

c_u_ePackagingLimit(2_3)_:
+7.5 vX(2_3_1)
+7.5 vX(2_3_2)
+8.5 vX(2_3_3)
+8.5 vX(2_3_4)
+8 vX(2_3_5)
<= 35000

c_u_eAssemblyTimeLimit(1_1)_:
+65 vY(1_1_6)
<= 5500

c_u_eAssemblyTimeLimit(1_2)_:
+60 vY(1_2_6)
<= 5000

c_u_eAssemblyTimeLimit(1_3)_:
+65 vY(1_3_6)
<= 6000

c_u_eAssemblyTimeLimit(2_1)_:
+65 vY(2_1_6)
<= 5500

c_u_eAssemblyTimeLimit(2_2)_:
+60 vY(2_2_6)
<= 5000

c_u_eAssemblyTimeLimit(2_3)_:
+65 vY(2_3_6)
<= 6000

c_u_eCarbonFibCapacity(1)_:
+0.25 vX(1_1_2)
+0.25 vX(1_2_2)
+0.25 vX(1_3_2)
<= 1000

c_u_eCarbonFibCapacity(2)_:
+0.25 vX(2_1_2)
+0.25 vX(2_2_2)
+0.25 vX(2_3_2)
<= 1000

c_l_eMinDemand(1_1_1)_:
+1 vZ(1_1_1)
>= 0

c_l_eMinDemand(1_1_2)_:
+1 vZ(1_1_2)
>= 100

c_l_eMinDemand(1_1_3)_:
+1 vZ(1_1_3)
>= 200

c_l_eMinDemand(1_1_4)_:
+1 vZ(1_1_4)
>= 30

c_l_eMinDemand(1_1_5)_:
+1 vZ(1_1_5)
>= 100

c_l_eMinDemand(1_1_6)_:
+1 vZ(1_1_6)
>= 0

c_l_eMinDemand(1_2_1)_:
+1 vZ(1_2_1)
>= 0

c_l_eMinDemand(1_2_2)_:
+1 vZ(1_2_2)
>= 100

c_l_eMinDemand(1_2_3)_:
+1 vZ(1_2_3)
>= 200

c_l_eMinDemand(1_2_4)_:
+1 vZ(1_2_4)
>= 30

c_l_eMinDemand(1_2_5)_:
+1 vZ(1_2_5)
>= 100

c_l_eMinDemand(1_2_6)_:
+1 vZ(1_2_6)
>= 0

c_l_eMinDemand(1_3_1)_:
+1 vZ(1_3_1)
>= 0

c_l_eMinDemand(1_3_2)_:
+1 vZ(1_3_2)
>= 50

c_l_eMinDemand(1_3_3)_:
+1 vZ(1_3_3)
>= 100

c_l_eMinDemand(1_3_4)_:
+1 vZ(1_3_4)
>= 15

c_l_eMinDemand(1_3_5)_:
+1 vZ(1_3_5)
>= 100

c_l_eMinDemand(1_3_6)_:
+1 vZ(1_3_6)
>= 0

c_l_eMinDemand(2_1_1)_:
+1 vZ(2_1_1)
>= 0

c_l_eMinDemand(2_1_2)_:
+1 vZ(2_1_2)
>= 100

c_l_eMinDemand(2_1_3)_:
+1 vZ(2_1_3)
>= 200

c_l_eMinDemand(2_1_4)_:
+1 vZ(2_1_4)
>= 30

c_l_eMinDemand(2_1_5)_:
+1 vZ(2_1_5)
>= 100

c_l_eMinDemand(2_1_6)_:
+1 vZ(2_1_6)
>= 0

c_l_eMinDemand(2_2_1)_:
+1 vZ(2_2_1)
>= 0

c_l_eMinDemand(2_2_2)_:
+1 vZ(2_2_2)
>= 100

c_l_eMinDemand(2_2_3)_:
+1 vZ(2_2_3)
>= 200

c_l_eMinDemand(2_2_4)_:
+1 vZ(2_2_4)
>= 30

c_l_eMinDemand(2_2_5)_:
+1 vZ(2_2_5)
>= 100

c_l_eMinDemand(2_2_6)_:
+1 vZ(2_2_6)
>= 0

c_l_eMinDemand(2_3_1)_:
+1 vZ(2_3_1)
>= 0

c_l_eMinDemand(2_3_2)_:
+1 vZ(2_3_2)
>= 50

c_l_eMinDemand(2_3_3)_:
+1 vZ(2_3_3)
>= 100

c_l_eMinDemand(2_3_4)_:
+1 vZ(2_3_4)
>= 15

c_l_eMinDemand(2_3_5)_:
+1 vZ(2_3_5)
>= 100

c_l_eMinDemand(2_3_6)_:
+1 vZ(2_3_6)
>= 0

c_u_eMaxDemand(1_1_1)_:
+1 vZ(1_1_1)
<= 2000

c_u_eMaxDemand(1_1_2)_:
+1 vZ(1_1_2)
<= 2000

c_u_eMaxDemand(1_1_3)_:
+1 vZ(1_1_3)
<= 2000

c_u_eMaxDemand(1_1_4)_:
+1 vZ(1_1_4)
<= 2000

c_u_eMaxDemand(1_1_5)_:
+1 vZ(1_1_5)
<= 2000

c_u_eMaxDemand(1_1_6)_:
+1 vZ(1_1_6)
<= 200

c_u_eMaxDemand(1_2_1)_:
+1 vZ(1_2_1)
<= 2000

c_u_eMaxDemand(1_2_2)_:
+1 vZ(1_2_2)
<= 2000

c_u_eMaxDemand(1_2_3)_:
+1 vZ(1_2_3)
<= 2000

c_u_eMaxDemand(1_2_4)_:
+1 vZ(1_2_4)
<= 2000

c_u_eMaxDemand(1_2_5)_:
+1 vZ(1_2_5)
<= 2000

c_u_eMaxDemand(1_2_6)_:
+1 vZ(1_2_6)
<= 200

c_u_eMaxDemand(1_3_1)_:
+1 vZ(1_3_1)
<= 2000

c_u_eMaxDemand(1_3_2)_:
+1 vZ(1_3_2)
<= 2000

c_u_eMaxDemand(1_3_3)_:
+1 vZ(1_3_3)
<= 2000

c_u_eMaxDemand(1_3_4)_:
+1 vZ(1_3_4)
<= 2000

c_u_eMaxDemand(1_3_5)_:
+1 vZ(1_3_5)
<= 2000

c_u_eMaxDemand(1_3_6)_:
+1 vZ(1_3_6)
<= 200

c_u_eMaxDemand(2_1_1)_:
+1 vZ(2_1_1)
<= 2000

c_u_eMaxDemand(2_1_2)_:
+1 vZ(2_1_2)
<= 2000

c_u_eMaxDemand(2_1_3)_:
+1 vZ(2_1_3)
<= 2000

c_u_eMaxDemand(2_1_4)_:
+1 vZ(2_1_4)
<= 2000

c_u_eMaxDemand(2_1_5)_:
+1 vZ(2_1_5)
<= 2000

c_u_eMaxDemand(2_1_6)_:
+1 vZ(2_1_6)
<= 200

c_u_eMaxDemand(2_2_1)_:
+1 vZ(2_2_1)
<= 2000

c_u_eMaxDemand(2_2_2)_:
+1 vZ(2_2_2)
<= 2000

c_u_eMaxDemand(2_2_3)_:
+1 vZ(2_2_3)
<= 2000

c_u_eMaxDemand(2_2_4)_:
+1 vZ(2_2_4)
<= 2000

c_u_eMaxDemand(2_2_5)_:
+1 vZ(2_2_5)
<= 2000

c_u_eMaxDemand(2_2_6)_:
+1 vZ(2_2_6)
<= 200

c_u_eMaxDemand(2_3_1)_:
+1 vZ(2_3_1)
<= 2000

c_u_eMaxDemand(2_3_2)_:
+1 vZ(2_3_2)
<= 2000

c_u_eMaxDemand(2_3_3)_:
+1 vZ(2_3_3)
<= 2000

c_u_eMaxDemand(2_3_4)_:
+1 vZ(2_3_4)
<= 2000

c_u_eMaxDemand(2_3_5)_:
+1 vZ(2_3_5)
<= 2000

c_u_eMaxDemand(2_3_6)_:
+1 vZ(2_3_6)
<= 200

bounds
   0 <= vZ(1_1_1) <= +inf
   0 <= vZ(1_1_2) <= +inf
   0 <= vZ(1_1_3) <= +inf
   0 <= vZ(1_1_4) <= +inf
   0 <= vZ(1_1_5) <= +inf
   0 <= vZ(1_1_6) <= +inf
   0 <= vZ(1_2_1) <= +inf
   0 <= vZ(1_2_2) <= +inf
   0 <= vZ(1_2_3) <= +inf
   0 <= vZ(1_2_4) <= +inf
   0 <= vZ(1_2_5) <= +inf
   0 <= vZ(1_2_6) <= +inf
   0 <= vZ(1_3_1) <= +inf
   0 <= vZ(1_3_2) <= +inf
   0 <= vZ(1_3_3) <= +inf
   0 <= vZ(1_3_4) <= +inf
   0 <= vZ(1_3_5) <= +inf
   0 <= vZ(1_3_6) <= +inf
   0 <= vZ(2_1_1) <= +inf
   0 <= vZ(2_1_2) <= +inf
   0 <= vZ(2_1_3) <= +inf
   0 <= vZ(2_1_4) <= +inf
   0 <= vZ(2_1_5) <= +inf
   0 <= vZ(2_1_6) <= +inf
   0 <= vZ(2_2_1) <= +inf
   0 <= vZ(2_2_2) <= +inf
   0 <= vZ(2_2_3) <= +inf
   0 <= vZ(2_2_4) <= +inf
   0 <= vZ(2_2_5) <= +inf
   0 <= vZ(2_2_6) <= +inf
   0 <= vZ(2_3_1) <= +inf
   0 <= vZ(2_3_2) <= +inf
   0 <= vZ(2_3_3) <= +inf
   0 <= vZ(2_3_4) <= +inf
   0 <= vZ(2_3_5) <= +inf
   0 <= vZ(2_3_6) <= +inf
   0 <= vY(1_1_1) <= +inf
   0 <= vY(1_1_2) <= +inf
   0 <= vY(1_1_3) <= +inf
   0 <= vY(1_1_4) <= +inf
   0 <= vY(1_1_5) <= +inf
   0 <= vY(1_1_6) <= +inf
   0 <= vY(1_2_1) <= +inf
   0 <= vY(1_2_2) <= +inf
   0 <= vY(1_2_3) <= +inf
   0 <= vY(1_2_4) <= +inf
   0 <= vY(1_2_5) <= +inf
   0 <= vY(1_2_6) <= +inf
   0 <= vY(1_3_1) <= +inf
   0 <= vY(1_3_2) <= +inf
   0 <= vY(1_3_3) <= +inf
   0 <= vY(1_3_4) <= +inf
   0 <= vY(1_3_5) <= +inf
   0 <= vY(1_3_6) <= +inf
   0 <= vY(2_1_1) <= +inf
   0 <= vY(2_1_2) <= +inf
   0 <= vY(2_1_3) <= +inf
   0 <= vY(2_1_4) <= +inf
   0 <= vY(2_1_5) <= +inf
   0 <= vY(2_1_6) <= +inf
   0 <= vY(2_2_1) <= +inf
   0 <= vY(2_2_2) <= +inf
   0 <= vY(2_2_3) <= +inf
   0 <= vY(2_2_4) <= +inf
   0 <= vY(2_2_5) <= +inf
   0 <= vY(2_2_6) <= +inf
   0 <= vY(2_3_1) <= +inf
   0 <= vY(2_3_2) <= +inf
   0 <= vY(2_3_3) <= +inf
   0 <= vY(2_3_4) <= +inf
   0 <= vY(2_3_5) <= +inf
   0 <= vY(2_3_6) <= +inf
   0 <= vQ(1_1_1) <= +inf
   0 <= vQ(1_1_2) <= +inf
   0 <= vQ(1_1_3) <= +inf
   0 <= vQ(1_1_4) <= +inf
   0 <= vQ(1_1_5) <= +inf
   0 <= vQ(1_1_6) <= +inf
   0 <= vQ(1_2_1) <= +inf
   0 <= vQ(1_2_2) <= +inf
   0 <= vQ(1_2_3) <= +inf
   0 <= vQ(1_2_4) <= +inf
   0 <= vQ(1_2_5) <= +inf
   0 <= vQ(1_2_6) <= +inf
   0 <= vQ(1_3_1) <= +inf
   0 <= vQ(1_3_2) <= +inf
   0 <= vQ(1_3_3) <= +inf
   0 <= vQ(1_3_4) <= +inf
   0 <= vQ(1_3_5) <= +inf
   0 <= vQ(1_3_6) <= +inf
   0 <= vQ(2_1_1) <= +inf
   0 <= vQ(2_1_2) <= +inf
   0 <= vQ(2_1_3) <= +inf
   0 <= vQ(2_1_4) <= +inf
   0 <= vQ(2_1_5) <= +inf
   0 <= vQ(2_1_6) <= +inf
   0 <= vQ(2_2_1) <= +inf
   0 <= vQ(2_2_2) <= +inf
   0 <= vQ(2_2_3) <= +inf
   0 <= vQ(2_2_4) <= +inf
   0 <= vQ(2_2_5) <= +inf
   0 <= vQ(2_2_6) <= +inf
   0 <= vQ(2_3_1) <= +inf
   0 <= vQ(2_3_2) <= +inf
   0 <= vQ(2_3_3) <= +inf
   0 <= vQ(2_3_4) <= +inf
   0 <= vQ(2_3_5) <= +inf
   0 <= vQ(2_3_6) <= +inf
   0 <= vX(1_1_1) <= +inf
   0 <= vX(1_1_2) <= +inf
   0 <= vX(1_1_3) <= +inf
   0 <= vX(1_1_4) <= +inf
   0 <= vX(1_1_5) <= +inf
   0 <= vX(1_2_1) <= +inf
   0 <= vX(1_2_2) <= +inf
   0 <= vX(1_2_3) <= +inf
   0 <= vX(1_2_4) <= +inf
   0 <= vX(1_2_5) <= +inf
   0 <= vX(1_3_1) <= +inf
   0 <= vX(1_3_2) <= +inf
   0 <= vX(1_3_3) <= +inf
   0 <= vX(1_3_4) <= +inf
   0 <= vX(1_3_5) <= +inf
   0 <= vX(2_1_1) <= +inf
   0 <= vX(2_1_2) <= +inf
   0 <= vX(2_1_3) <= +inf
   0 <= vX(2_1_4) <= +inf
   0 <= vX(2_1_5) <= +inf
   0 <= vX(2_2_1) <= +inf
   0 <= vX(2_2_2) <= +inf
   0 <= vX(2_2_3) <= +inf
   0 <= vX(2_2_4) <= +inf
   0 <= vX(2_2_5) <= +inf
   0 <= vX(2_3_1) <= +inf
   0 <= vX(2_3_2) <= +inf
   0 <= vX(2_3_3) <= +inf
   0 <= vX(2_3_4) <= +inf
   0 <= vX(2_3_5) <= +inf
end
