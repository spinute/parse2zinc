begin_version
3
end_version
begin_metric
0
end_metric
25
begin_variable
var0
-1
2
Atom closed-cb1()
NegatedAtom closed-cb1()
end_variable
begin_variable
var1
-1
2
Atom closed-cb2()
NegatedAtom closed-cb2()
end_variable
begin_variable
var2
-1
2
Atom closed-sd1()
Atom not-closed-sd1()
end_variable
begin_variable
var3
-1
2
Atom closed-sd10()
Atom not-closed-sd10()
end_variable
begin_variable
var4
-1
2
Atom closed-sd11()
Atom not-closed-sd11()
end_variable
begin_variable
var5
-1
2
Atom closed-sd12()
Atom not-closed-sd12()
end_variable
begin_variable
var6
-1
2
Atom closed-sd13()
Atom not-closed-sd13()
end_variable
begin_variable
var7
-1
2
Atom closed-sd14()
Atom not-closed-sd14()
end_variable
begin_variable
var8
-1
2
Atom closed-sd15()
Atom not-closed-sd15()
end_variable
begin_variable
var9
-1
2
Atom closed-sd16()
Atom not-closed-sd16()
end_variable
begin_variable
var10
-1
2
Atom closed-sd2()
Atom not-closed-sd2()
end_variable
begin_variable
var11
-1
2
Atom closed-sd3()
Atom not-closed-sd3()
end_variable
begin_variable
var12
-1
2
Atom closed-sd4()
Atom not-closed-sd4()
end_variable
begin_variable
var13
-1
2
Atom closed-sd5()
Atom not-closed-sd5()
end_variable
begin_variable
var14
-1
2
Atom closed-sd6()
Atom not-closed-sd6()
end_variable
begin_variable
var15
-1
2
Atom closed-sd7()
Atom not-closed-sd7()
end_variable
begin_variable
var16
-1
2
Atom closed-sd8()
Atom not-closed-sd8()
end_variable
begin_variable
var17
-1
2
Atom closed-sd9()
Atom not-closed-sd9()
end_variable
begin_variable
var18
-1
5
Atom do-close_sd10-condeffs()
Atom do-close_sd11-condeffs()
Atom do-close_sd13-condeffs()
Atom do-normal()
Atom do-wait_cb2-condeffs()
end_variable
begin_variable
var19
-1
2
Atom done-0()
NegatedAtom done-0()
end_variable
begin_variable
var20
-1
2
Atom done-1()
NegatedAtom done-1()
end_variable
begin_variable
var21
-1
2
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var22
-1
2
Atom not-closed-cb2()
NegatedAtom not-closed-cb2()
end_variable
begin_variable
var23
-1
2
Atom not-updated-cb1()
Atom updated-cb1()
end_variable
begin_variable
var24
-1
2
Atom not-updated-cb2()
Atom updated-cb2()
end_variable
19
begin_mutex_group
2
2 0
2 1
end_mutex_group
begin_mutex_group
2
3 0
3 1
end_mutex_group
begin_mutex_group
2
4 0
4 1
end_mutex_group
begin_mutex_group
2
5 0
5 1
end_mutex_group
begin_mutex_group
2
6 0
6 1
end_mutex_group
begin_mutex_group
2
7 0
7 1
end_mutex_group
begin_mutex_group
2
8 0
8 1
end_mutex_group
begin_mutex_group
2
9 0
9 1
end_mutex_group
begin_mutex_group
2
10 0
10 1
end_mutex_group
begin_mutex_group
2
11 0
11 1
end_mutex_group
begin_mutex_group
2
12 0
12 1
end_mutex_group
begin_mutex_group
2
13 0
13 1
end_mutex_group
begin_mutex_group
2
14 0
14 1
end_mutex_group
begin_mutex_group
2
15 0
15 1
end_mutex_group
begin_mutex_group
2
16 0
16 1
end_mutex_group
begin_mutex_group
2
17 0
17 1
end_mutex_group
begin_mutex_group
5
18 0
18 1
18 2
18 3
18 4
end_mutex_group
begin_mutex_group
2
23 0
23 1
end_mutex_group
begin_mutex_group
2
24 0
24 1
end_mutex_group
begin_state
0
0
0
0
0
0
0
0
0
0
0
0
1
0
0
0
0
1
3
1
1
1
1
0
0
end_state
begin_goal
6
1 0
4 0
5 0
18 3
23 1
24 1
end_goal
55
begin_operator
close_cb1 
2
18 3
24 1
3
0 0 -1 0
0 21 0 1
0 23 1 0
0
end_operator
begin_operator
close_cb2 
2
18 3
23 1
3
0 1 -1 0
0 22 0 1
0 24 1 0
0
end_operator
begin_operator
close_sd1 
3
18 3
23 1
24 1
1
0 2 1 0
0
end_operator
begin_operator
close_sd10 
2
23 1
24 1
2
0 3 1 0
0 18 3 0
0
end_operator
begin_operator
close_sd10-condeff0-no-0 
2
18 0
22 0
1
0 19 -1 0
0
end_operator
begin_operator
close_sd10-condeff0-yes 
1
18 0
3
0 1 0 1
0 19 -1 0
0 22 -1 0
0
end_operator
begin_operator
close_sd10-endof-condeffs 
0
2
0 18 0 3
0 19 0 1
0
end_operator
begin_operator
close_sd11 
2
23 1
24 1
2
0 4 1 0
0 18 3 1
0
end_operator
begin_operator
close_sd11-condeff0-no-0 
2
6 1
18 1
1
0 19 -1 0
0
end_operator
begin_operator
close_sd11-condeff0-no-1 
2
18 1
22 0
1
0 19 -1 0
0
end_operator
begin_operator
close_sd11-condeff0-yes 
2
6 0
18 1
3
0 1 0 1
0 19 -1 0
0 22 -1 0
0
end_operator
begin_operator
close_sd11-endof-condeffs 
0
2
0 18 1 3
0 19 0 1
0
end_operator
begin_operator
close_sd12 
3
18 3
23 1
24 1
1
0 5 1 0
0
end_operator
begin_operator
close_sd13 
2
23 1
24 1
2
0 6 1 0
0 18 3 2
0
end_operator
begin_operator
close_sd13-condeff0-no-0 
2
4 1
18 2
1
0 19 -1 0
0
end_operator
begin_operator
close_sd13-condeff0-no-1 
2
18 2
22 0
1
0 19 -1 0
0
end_operator
begin_operator
close_sd13-condeff0-yes 
2
4 0
18 2
3
0 1 0 1
0 19 -1 0
0 22 -1 0
0
end_operator
begin_operator
close_sd13-endof-condeffs 
0
2
0 18 2 3
0 19 0 1
0
end_operator
begin_operator
close_sd14 
3
18 3
23 1
24 1
1
0 7 1 0
0
end_operator
begin_operator
close_sd15 
3
18 3
23 1
24 1
1
0 8 1 0
0
end_operator
begin_operator
close_sd16 
3
18 3
23 1
24 1
1
0 9 1 0
0
end_operator
begin_operator
close_sd2 
3
18 3
23 1
24 1
1
0 10 1 0
0
end_operator
begin_operator
close_sd3 
3
18 3
23 1
24 1
1
0 11 1 0
0
end_operator
begin_operator
close_sd4 
3
18 3
23 1
24 1
1
0 12 1 0
0
end_operator
begin_operator
close_sd5 
3
18 3
23 1
24 1
1
0 13 1 0
0
end_operator
begin_operator
close_sd6 
3
18 3
23 1
24 1
1
0 14 1 0
0
end_operator
begin_operator
close_sd7 
3
18 3
23 1
24 1
1
0 15 1 0
0
end_operator
begin_operator
close_sd8 
3
18 3
23 1
24 1
1
0 16 1 0
0
end_operator
begin_operator
close_sd9 
3
18 3
23 1
24 1
1
0 17 1 0
0
end_operator
begin_operator
open-cb1 
3
18 3
23 1
24 1
2
0 0 0 1
0 21 -1 0
0
end_operator
begin_operator
open-cb2 
3
18 3
23 1
24 1
2
0 1 0 1
0 22 -1 0
0
end_operator
begin_operator
open-sd1 
3
18 3
23 1
24 1
1
0 2 0 1
0
end_operator
begin_operator
open-sd10 
3
18 3
23 1
24 1
1
0 3 0 1
0
end_operator
begin_operator
open-sd11 
3
18 3
23 1
24 1
1
0 4 0 1
0
end_operator
begin_operator
open-sd12 
3
18 3
23 1
24 1
1
0 5 0 1
0
end_operator
begin_operator
open-sd13 
3
18 3
23 1
24 1
1
0 6 0 1
0
end_operator
begin_operator
open-sd14 
3
18 3
23 1
24 1
1
0 7 0 1
0
end_operator
begin_operator
open-sd15 
3
18 3
23 1
24 1
1
0 8 0 1
0
end_operator
begin_operator
open-sd16 
3
18 3
23 1
24 1
1
0 9 0 1
0
end_operator
begin_operator
open-sd2 
3
18 3
23 1
24 1
1
0 10 0 1
0
end_operator
begin_operator
open-sd3 
3
18 3
23 1
24 1
1
0 11 0 1
0
end_operator
begin_operator
open-sd4 
3
18 3
23 1
24 1
1
0 12 0 1
0
end_operator
begin_operator
open-sd5 
3
18 3
23 1
24 1
1
0 13 0 1
0
end_operator
begin_operator
open-sd6 
3
18 3
23 1
24 1
1
0 14 0 1
0
end_operator
begin_operator
open-sd7 
3
18 3
23 1
24 1
1
0 15 0 1
0
end_operator
begin_operator
open-sd8 
3
18 3
23 1
24 1
1
0 16 0 1
0
end_operator
begin_operator
open-sd9 
3
18 3
23 1
24 1
1
0 17 0 1
0
end_operator
begin_operator
wait_cb1 
1
18 3
3
0 0 -1 1
0 21 -1 0
0 23 0 1
0
end_operator
begin_operator
wait_cb2 
0
2
0 18 3 4
0 24 0 1
0
end_operator
begin_operator
wait_cb2-condeff0-no-0 
2
3 1
18 4
1
0 19 -1 0
0
end_operator
begin_operator
wait_cb2-condeff0-yes 
2
3 0
18 4
3
0 1 -1 1
0 19 -1 0
0 22 -1 0
0
end_operator
begin_operator
wait_cb2-condeff1-no-0 
2
6 1
18 4
1
0 20 -1 0
0
end_operator
begin_operator
wait_cb2-condeff1-no-1 
2
4 1
18 4
1
0 20 -1 0
0
end_operator
begin_operator
wait_cb2-condeff1-yes 
3
4 0
6 0
18 4
3
0 1 -1 1
0 20 -1 0
0 22 -1 0
0
end_operator
begin_operator
wait_cb2-endof-condeffs 
0
3
0 18 4 3
0 19 0 1
0 20 0 1
0
end_operator
0
