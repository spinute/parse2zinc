begin_version
3
end_version
begin_metric
0
end_metric
14
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
Atom closed-sd1()
Atom not-closed-sd1()
end_variable
begin_variable
var2
-1
2
Atom closed-sd2()
Atom not-closed-sd2()
end_variable
begin_variable
var3
-1
2
Atom closed-sd3()
Atom not-closed-sd3()
end_variable
begin_variable
var4
-1
2
Atom closed-sd4()
Atom not-closed-sd4()
end_variable
begin_variable
var5
-1
2
Atom closed-sd5()
Atom not-closed-sd5()
end_variable
begin_variable
var6
-1
2
Atom closed-sd6()
Atom not-closed-sd6()
end_variable
begin_variable
var7
-1
2
Atom closed-sd7()
Atom not-closed-sd7()
end_variable
begin_variable
var8
-1
2
Atom closed-sd8()
Atom not-closed-sd8()
end_variable
begin_variable
var9
-1
5
Atom do-close_sd1-condeffs()
Atom do-close_sd7-condeffs()
Atom do-close_sd8-condeffs()
Atom do-normal()
Atom do-wait_cb1-condeffs()
end_variable
begin_variable
var10
-1
2
Atom done-0()
NegatedAtom done-0()
end_variable
begin_variable
var11
-1
2
Atom done-1()
NegatedAtom done-1()
end_variable
begin_variable
var12
-1
2
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var13
-1
2
Atom not-updated-cb1()
Atom updated-cb1()
end_variable
10
begin_mutex_group
2
1 0
1 1
end_mutex_group
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
5
9 0
9 1
9 2
9 3
9 4
end_mutex_group
begin_mutex_group
2
13 0
13 1
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
3
1
1
1
0
end_state
begin_goal
4
0 0
7 0
9 3
13 1
end_goal
36
begin_operator
close_cb1 
1
9 3
3
0 0 -1 0
0 12 0 1
0 13 1 0
0
end_operator
begin_operator
close_sd1 
1
13 1
2
0 1 1 0
0 9 3 0
0
end_operator
begin_operator
close_sd1-condeff0-no-0 
2
9 0
12 0
1
0 10 -1 0
0
end_operator
begin_operator
close_sd1-condeff0-yes 
1
9 0
3
0 0 0 1
0 10 -1 0
0 12 -1 0
0
end_operator
begin_operator
close_sd1-endof-condeffs 
0
2
0 9 0 3
0 10 0 1
0
end_operator
begin_operator
close_sd2 
2
9 3
13 1
1
0 2 1 0
0
end_operator
begin_operator
close_sd3 
2
9 3
13 1
1
0 3 1 0
0
end_operator
begin_operator
close_sd4 
2
9 3
13 1
1
0 4 1 0
0
end_operator
begin_operator
close_sd5 
2
9 3
13 1
1
0 5 1 0
0
end_operator
begin_operator
close_sd6 
2
9 3
13 1
1
0 6 1 0
0
end_operator
begin_operator
close_sd7 
1
13 1
2
0 7 1 0
0 9 3 1
0
end_operator
begin_operator
close_sd7-condeff0-no-0 
2
8 1
9 1
1
0 10 -1 0
0
end_operator
begin_operator
close_sd7-condeff0-no-1 
2
9 1
12 0
1
0 10 -1 0
0
end_operator
begin_operator
close_sd7-condeff0-yes 
2
8 0
9 1
3
0 0 0 1
0 10 -1 0
0 12 -1 0
0
end_operator
begin_operator
close_sd7-endof-condeffs 
0
2
0 9 1 3
0 10 0 1
0
end_operator
begin_operator
close_sd8 
1
13 1
2
0 8 1 0
0 9 3 2
0
end_operator
begin_operator
close_sd8-condeff0-no-0 
2
7 1
9 2
1
0 10 -1 0
0
end_operator
begin_operator
close_sd8-condeff0-no-1 
2
9 2
12 0
1
0 10 -1 0
0
end_operator
begin_operator
close_sd8-condeff0-yes 
2
7 0
9 2
3
0 0 0 1
0 10 -1 0
0 12 -1 0
0
end_operator
begin_operator
close_sd8-endof-condeffs 
0
2
0 9 2 3
0 10 0 1
0
end_operator
begin_operator
open-cb1 
2
9 3
13 1
2
0 0 0 1
0 12 -1 0
0
end_operator
begin_operator
open-sd1 
2
9 3
13 1
1
0 1 0 1
0
end_operator
begin_operator
open-sd2 
2
9 3
13 1
1
0 2 0 1
0
end_operator
begin_operator
open-sd3 
2
9 3
13 1
1
0 3 0 1
0
end_operator
begin_operator
open-sd4 
2
9 3
13 1
1
0 4 0 1
0
end_operator
begin_operator
open-sd5 
2
9 3
13 1
1
0 5 0 1
0
end_operator
begin_operator
open-sd6 
2
9 3
13 1
1
0 6 0 1
0
end_operator
begin_operator
open-sd7 
2
9 3
13 1
1
0 7 0 1
0
end_operator
begin_operator
open-sd8 
2
9 3
13 1
1
0 8 0 1
0
end_operator
begin_operator
wait_cb1 
0
2
0 9 3 4
0 13 0 1
0
end_operator
begin_operator
wait_cb1-condeff0-no-0 
2
1 1
9 4
1
0 10 -1 0
0
end_operator
begin_operator
wait_cb1-condeff0-yes 
2
1 0
9 4
3
0 0 -1 1
0 10 -1 0
0 12 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-no-0 
2
8 1
9 4
1
0 11 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-no-1 
2
7 1
9 4
1
0 11 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-yes 
3
7 0
8 0
9 4
3
0 0 -1 1
0 11 -1 0
0 12 -1 0
0
end_operator
begin_operator
wait_cb1-endof-condeffs 
0
3
0 9 4 3
0 10 0 1
0 11 0 1
0
end_operator
0
