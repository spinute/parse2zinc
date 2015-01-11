begin_version
3
end_version
begin_metric
0
end_metric
18
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
Atom closed-sd2()
Atom not-closed-sd2()
end_variable
begin_variable
var4
-1
2
Atom closed-sd3()
Atom not-closed-sd3()
end_variable
begin_variable
var5
-1
2
Atom closed-sd4()
Atom not-closed-sd4()
end_variable
begin_variable
var6
-1
2
Atom closed-sd5()
Atom not-closed-sd5()
end_variable
begin_variable
var7
-1
2
Atom closed-sd6()
Atom not-closed-sd6()
end_variable
begin_variable
var8
-1
2
Atom closed-sd7()
Atom not-closed-sd7()
end_variable
begin_variable
var9
-1
2
Atom closed-sd8()
Atom not-closed-sd8()
end_variable
begin_variable
var10
-1
2
Atom closed-sd9()
Atom not-closed-sd9()
end_variable
begin_variable
var11
-1
6
Atom do-close_sd1-condeffs()
Atom do-close_sd5-condeffs()
Atom do-close_sd6-condeffs()
Atom do-normal()
Atom do-wait_cb1-condeffs()
Atom do-wait_cb2-condeffs()
end_variable
begin_variable
var12
-1
2
Atom done-0()
NegatedAtom done-0()
end_variable
begin_variable
var13
-1
2
Atom done-1()
NegatedAtom done-1()
end_variable
begin_variable
var14
-1
2
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var15
-1
2
Atom not-closed-cb2()
NegatedAtom not-closed-cb2()
end_variable
begin_variable
var16
-1
2
Atom not-updated-cb1()
Atom updated-cb1()
end_variable
begin_variable
var17
-1
2
Atom not-updated-cb2()
Atom updated-cb2()
end_variable
12
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
6
11 0
11 1
11 2
11 3
11 4
11 5
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
begin_state
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
0
3
1
1
1
1
0
0
end_state
begin_goal
5
0 0
1 0
11 3
16 1
17 1
end_goal
41
begin_operator
close_cb1 
2
11 3
17 1
3
0 0 -1 0
0 14 0 1
0 16 1 0
0
end_operator
begin_operator
close_cb2 
2
11 3
16 1
3
0 1 -1 0
0 15 0 1
0 17 1 0
0
end_operator
begin_operator
close_sd1 
2
16 1
17 1
2
0 2 1 0
0 11 3 0
0
end_operator
begin_operator
close_sd1-condeff0-no-0 
2
11 0
14 0
1
0 12 -1 0
0
end_operator
begin_operator
close_sd1-condeff0-yes 
1
11 0
3
0 0 0 1
0 12 -1 0
0 14 -1 0
0
end_operator
begin_operator
close_sd1-endof-condeffs 
0
2
0 11 0 3
0 12 0 1
0
end_operator
begin_operator
close_sd2 
3
11 3
16 1
17 1
1
0 3 1 0
0
end_operator
begin_operator
close_sd3 
3
11 3
16 1
17 1
1
0 4 1 0
0
end_operator
begin_operator
close_sd4 
3
11 3
16 1
17 1
1
0 5 1 0
0
end_operator
begin_operator
close_sd5 
2
16 1
17 1
2
0 6 1 0
0 11 3 1
0
end_operator
begin_operator
close_sd5-condeff0-no-0 
2
11 1
15 0
1
0 12 -1 0
0
end_operator
begin_operator
close_sd5-condeff0-yes 
1
11 1
3
0 1 0 1
0 12 -1 0
0 15 -1 0
0
end_operator
begin_operator
close_sd5-endof-condeffs 
0
2
0 11 1 3
0 12 0 1
0
end_operator
begin_operator
close_sd6 
2
16 1
17 1
2
0 7 1 0
0 11 3 2
0
end_operator
begin_operator
close_sd6-condeff0-no-0 
2
11 2
15 0
1
0 12 -1 0
0
end_operator
begin_operator
close_sd6-condeff0-yes 
1
11 2
3
0 1 0 1
0 12 -1 0
0 15 -1 0
0
end_operator
begin_operator
close_sd6-endof-condeffs 
0
2
0 11 2 3
0 12 0 1
0
end_operator
begin_operator
close_sd7 
3
11 3
16 1
17 1
1
0 8 1 0
0
end_operator
begin_operator
close_sd8 
3
11 3
16 1
17 1
1
0 9 1 0
0
end_operator
begin_operator
close_sd9 
3
11 3
16 1
17 1
1
0 10 1 0
0
end_operator
begin_operator
open-cb1 
3
11 3
16 1
17 1
2
0 0 0 1
0 14 -1 0
0
end_operator
begin_operator
open-cb2 
3
11 3
16 1
17 1
2
0 1 0 1
0 15 -1 0
0
end_operator
begin_operator
open-sd1 
3
11 3
16 1
17 1
1
0 2 0 1
0
end_operator
begin_operator
open-sd2 
3
11 3
16 1
17 1
1
0 3 0 1
0
end_operator
begin_operator
open-sd3 
3
11 3
16 1
17 1
1
0 4 0 1
0
end_operator
begin_operator
open-sd4 
3
11 3
16 1
17 1
1
0 5 0 1
0
end_operator
begin_operator
open-sd5 
3
11 3
16 1
17 1
1
0 6 0 1
0
end_operator
begin_operator
open-sd6 
3
11 3
16 1
17 1
1
0 7 0 1
0
end_operator
begin_operator
open-sd7 
3
11 3
16 1
17 1
1
0 8 0 1
0
end_operator
begin_operator
open-sd8 
3
11 3
16 1
17 1
1
0 9 0 1
0
end_operator
begin_operator
open-sd9 
3
11 3
16 1
17 1
1
0 10 0 1
0
end_operator
begin_operator
wait_cb1 
0
2
0 11 3 4
0 16 0 1
0
end_operator
begin_operator
wait_cb1-condeff0-no-0 
2
2 1
11 4
1
0 12 -1 0
0
end_operator
begin_operator
wait_cb1-condeff0-yes 
2
2 0
11 4
3
0 0 -1 1
0 12 -1 0
0 14 -1 0
0
end_operator
begin_operator
wait_cb1-endof-condeffs 
0
2
0 11 4 3
0 12 0 1
0
end_operator
begin_operator
wait_cb2 
0
2
0 11 3 5
0 17 0 1
0
end_operator
begin_operator
wait_cb2-condeff0-no-0 
2
6 1
11 5
1
0 12 -1 0
0
end_operator
begin_operator
wait_cb2-condeff0-yes 
2
6 0
11 5
3
0 1 -1 1
0 12 -1 0
0 15 -1 0
0
end_operator
begin_operator
wait_cb2-condeff1-no-0 
2
7 1
11 5
1
0 13 -1 0
0
end_operator
begin_operator
wait_cb2-condeff1-yes 
2
7 0
11 5
3
0 1 -1 1
0 13 -1 0
0 15 -1 0
0
end_operator
begin_operator
wait_cb2-endof-condeffs 
0
3
0 11 5 3
0 12 0 1
0 13 0 1
0
end_operator
0
