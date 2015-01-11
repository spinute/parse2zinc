begin_version
3
end_version
begin_metric
0
end_metric
24
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
Atom closed-cb3()
NegatedAtom closed-cb3()
end_variable
begin_variable
var3
-1
2
Atom closed-sd1()
Atom not-closed-sd1()
end_variable
begin_variable
var4
-1
2
Atom closed-sd10()
Atom not-closed-sd10()
end_variable
begin_variable
var5
-1
2
Atom closed-sd11()
Atom not-closed-sd11()
end_variable
begin_variable
var6
-1
2
Atom closed-sd2()
Atom not-closed-sd2()
end_variable
begin_variable
var7
-1
2
Atom closed-sd3()
Atom not-closed-sd3()
end_variable
begin_variable
var8
-1
2
Atom closed-sd4()
Atom not-closed-sd4()
end_variable
begin_variable
var9
-1
2
Atom closed-sd5()
Atom not-closed-sd5()
end_variable
begin_variable
var10
-1
2
Atom closed-sd6()
Atom not-closed-sd6()
end_variable
begin_variable
var11
-1
2
Atom closed-sd7()
Atom not-closed-sd7()
end_variable
begin_variable
var12
-1
2
Atom closed-sd8()
Atom not-closed-sd8()
end_variable
begin_variable
var13
-1
2
Atom closed-sd9()
Atom not-closed-sd9()
end_variable
begin_variable
var14
-1
5
Atom do-close_sd10-condeffs()
Atom do-close_sd3-condeffs()
Atom do-close_sd8-condeffs()
Atom do-normal()
Atom do-wait_cb3-condeffs()
end_variable
begin_variable
var15
-1
2
Atom done-0()
NegatedAtom done-0()
end_variable
begin_variable
var16
-1
2
Atom done-1()
NegatedAtom done-1()
end_variable
begin_variable
var17
-1
2
Atom done-2()
NegatedAtom done-2()
end_variable
begin_variable
var18
-1
2
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var19
-1
2
Atom not-closed-cb2()
NegatedAtom not-closed-cb2()
end_variable
begin_variable
var20
-1
2
Atom not-closed-cb3()
NegatedAtom not-closed-cb3()
end_variable
begin_variable
var21
-1
2
Atom not-updated-cb1()
Atom updated-cb1()
end_variable
begin_variable
var22
-1
2
Atom not-updated-cb2()
Atom updated-cb2()
end_variable
begin_variable
var23
-1
2
Atom not-updated-cb3()
Atom updated-cb3()
end_variable
15
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
5
14 0
14 1
14 2
14 3
14 4
end_mutex_group
begin_mutex_group
2
21 0
21 1
end_mutex_group
begin_mutex_group
2
22 0
22 1
end_mutex_group
begin_mutex_group
2
23 0
23 1
end_mutex_group
begin_state
0
0
0
0
0
0
1
1
0
0
0
0
1
1
3
1
1
1
1
1
1
0
0
0
end_state
begin_goal
5
2 0
14 3
21 1
22 1
23 1
end_goal
47
begin_operator
close_cb1 
3
14 3
22 1
23 1
3
0 0 -1 0
0 18 0 1
0 21 1 0
0
end_operator
begin_operator
close_cb2 
3
14 3
21 1
23 1
3
0 1 -1 0
0 19 0 1
0 22 1 0
0
end_operator
begin_operator
close_cb3 
3
14 3
21 1
22 1
3
0 2 -1 0
0 20 0 1
0 23 1 0
0
end_operator
begin_operator
close_sd1 
4
14 3
21 1
22 1
23 1
1
0 3 1 0
0
end_operator
begin_operator
close_sd10 
3
21 1
22 1
23 1
2
0 4 1 0
0 14 3 0
0
end_operator
begin_operator
close_sd10-condeff0-no-0 
2
14 0
20 0
1
0 15 -1 0
0
end_operator
begin_operator
close_sd10-condeff0-yes 
1
14 0
3
0 2 0 1
0 15 -1 0
0 20 -1 0
0
end_operator
begin_operator
close_sd10-endof-condeffs 
0
2
0 14 0 3
0 15 0 1
0
end_operator
begin_operator
close_sd11 
4
14 3
21 1
22 1
23 1
1
0 5 1 0
0
end_operator
begin_operator
close_sd2 
4
14 3
21 1
22 1
23 1
1
0 6 1 0
0
end_operator
begin_operator
close_sd3 
3
21 1
22 1
23 1
2
0 7 1 0
0 14 3 1
0
end_operator
begin_operator
close_sd3-condeff0-no-0 
2
14 1
20 0
1
0 15 -1 0
0
end_operator
begin_operator
close_sd3-condeff0-yes 
1
14 1
3
0 2 0 1
0 15 -1 0
0 20 -1 0
0
end_operator
begin_operator
close_sd3-endof-condeffs 
0
2
0 14 1 3
0 15 0 1
0
end_operator
begin_operator
close_sd4 
4
14 3
21 1
22 1
23 1
1
0 8 1 0
0
end_operator
begin_operator
close_sd5 
4
14 3
21 1
22 1
23 1
1
0 9 1 0
0
end_operator
begin_operator
close_sd6 
4
14 3
21 1
22 1
23 1
1
0 10 1 0
0
end_operator
begin_operator
close_sd7 
4
14 3
21 1
22 1
23 1
1
0 11 1 0
0
end_operator
begin_operator
close_sd8 
3
21 1
22 1
23 1
2
0 12 1 0
0 14 3 2
0
end_operator
begin_operator
close_sd8-condeff0-no-0 
2
14 2
20 0
1
0 15 -1 0
0
end_operator
begin_operator
close_sd8-condeff0-yes 
1
14 2
3
0 2 0 1
0 15 -1 0
0 20 -1 0
0
end_operator
begin_operator
close_sd8-endof-condeffs 
0
2
0 14 2 3
0 15 0 1
0
end_operator
begin_operator
close_sd9 
4
14 3
21 1
22 1
23 1
1
0 13 1 0
0
end_operator
begin_operator
open-cb1 
4
14 3
21 1
22 1
23 1
2
0 0 0 1
0 18 -1 0
0
end_operator
begin_operator
open-cb2 
4
14 3
21 1
22 1
23 1
2
0 1 0 1
0 19 -1 0
0
end_operator
begin_operator
open-cb3 
4
14 3
21 1
22 1
23 1
2
0 2 0 1
0 20 -1 0
0
end_operator
begin_operator
open-sd1 
4
14 3
21 1
22 1
23 1
1
0 3 0 1
0
end_operator
begin_operator
open-sd10 
4
14 3
21 1
22 1
23 1
1
0 4 0 1
0
end_operator
begin_operator
open-sd11 
4
14 3
21 1
22 1
23 1
1
0 5 0 1
0
end_operator
begin_operator
open-sd2 
4
14 3
21 1
22 1
23 1
1
0 6 0 1
0
end_operator
begin_operator
open-sd3 
4
14 3
21 1
22 1
23 1
1
0 7 0 1
0
end_operator
begin_operator
open-sd4 
4
14 3
21 1
22 1
23 1
1
0 8 0 1
0
end_operator
begin_operator
open-sd5 
4
14 3
21 1
22 1
23 1
1
0 9 0 1
0
end_operator
begin_operator
open-sd6 
4
14 3
21 1
22 1
23 1
1
0 10 0 1
0
end_operator
begin_operator
open-sd7 
4
14 3
21 1
22 1
23 1
1
0 11 0 1
0
end_operator
begin_operator
open-sd8 
4
14 3
21 1
22 1
23 1
1
0 12 0 1
0
end_operator
begin_operator
open-sd9 
4
14 3
21 1
22 1
23 1
1
0 13 0 1
0
end_operator
begin_operator
wait_cb1 
1
14 3
3
0 0 -1 1
0 18 -1 0
0 21 0 1
0
end_operator
begin_operator
wait_cb2 
1
14 3
3
0 1 -1 1
0 19 -1 0
0 22 0 1
0
end_operator
begin_operator
wait_cb3 
0
2
0 14 3 4
0 23 0 1
0
end_operator
begin_operator
wait_cb3-condeff0-no-0 
2
7 1
14 4
1
0 15 -1 0
0
end_operator
begin_operator
wait_cb3-condeff0-yes 
2
7 0
14 4
3
0 2 -1 1
0 15 -1 0
0 20 -1 0
0
end_operator
begin_operator
wait_cb3-condeff1-no-0 
2
12 1
14 4
1
0 16 -1 0
0
end_operator
begin_operator
wait_cb3-condeff1-yes 
2
12 0
14 4
3
0 2 -1 1
0 16 -1 0
0 20 -1 0
0
end_operator
begin_operator
wait_cb3-condeff2-no-0 
2
4 1
14 4
1
0 17 -1 0
0
end_operator
begin_operator
wait_cb3-condeff2-yes 
2
4 0
14 4
3
0 2 -1 1
0 17 -1 0
0 20 -1 0
0
end_operator
begin_operator
wait_cb3-endof-condeffs 
0
4
0 14 4 3
0 15 0 1
0 16 0 1
0 17 0 1
0
end_operator
0
