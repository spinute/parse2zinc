begin_version
3
end_version
begin_metric
0
end_metric
15
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
5
Atom do-close_sd1-condeffs()
Atom do-close_sd2-condeffs()
Atom do-close_sd4-condeffs()
Atom do-normal()
Atom do-wait_cb1-condeffs()
end_variable
begin_variable
var9
-1
2
Atom done-0()
NegatedAtom done-0()
end_variable
begin_variable
var10
-1
2
Atom done-1()
NegatedAtom done-1()
end_variable
begin_variable
var11
-1
2
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var12
-1
2
Atom not-closed-cb2()
NegatedAtom not-closed-cb2()
end_variable
begin_variable
var13
-1
2
Atom not-updated-cb1()
Atom updated-cb1()
end_variable
begin_variable
var14
-1
2
Atom not-updated-cb2()
Atom updated-cb2()
end_variable
9
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
5
8 0
8 1
8 2
8 3
8 4
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
begin_state
0
0
1
0
1
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
2 0
8 3
13 1
14 1
end_goal
35
begin_operator
close_cb1 
2
8 3
14 1
3
0 0 -1 0
0 11 0 1
0 13 1 0
0
end_operator
begin_operator
close_cb2 
2
8 3
13 1
3
0 1 -1 0
0 12 0 1
0 14 1 0
0
end_operator
begin_operator
close_sd1 
2
13 1
14 1
2
0 2 1 0
0 8 3 0
0
end_operator
begin_operator
close_sd1-condeff0-no-0 
2
5 1
8 0
1
0 9 -1 0
0
end_operator
begin_operator
close_sd1-condeff0-no-1 
2
8 0
11 0
1
0 9 -1 0
0
end_operator
begin_operator
close_sd1-condeff0-yes 
2
5 0
8 0
3
0 0 0 1
0 9 -1 0
0 11 -1 0
0
end_operator
begin_operator
close_sd1-endof-condeffs 
0
2
0 8 0 3
0 9 0 1
0
end_operator
begin_operator
close_sd2 
2
13 1
14 1
2
0 3 1 0
0 8 3 1
0
end_operator
begin_operator
close_sd2-condeff0-no-0 
2
8 1
11 0
1
0 9 -1 0
0
end_operator
begin_operator
close_sd2-condeff0-yes 
1
8 1
3
0 0 0 1
0 9 -1 0
0 11 -1 0
0
end_operator
begin_operator
close_sd2-endof-condeffs 
0
2
0 8 1 3
0 9 0 1
0
end_operator
begin_operator
close_sd3 
3
8 3
13 1
14 1
1
0 4 1 0
0
end_operator
begin_operator
close_sd4 
2
13 1
14 1
2
0 5 1 0
0 8 3 2
0
end_operator
begin_operator
close_sd4-condeff0-no-0 
2
2 1
8 2
1
0 9 -1 0
0
end_operator
begin_operator
close_sd4-condeff0-no-1 
2
8 2
11 0
1
0 9 -1 0
0
end_operator
begin_operator
close_sd4-condeff0-yes 
2
2 0
8 2
3
0 0 0 1
0 9 -1 0
0 11 -1 0
0
end_operator
begin_operator
close_sd4-endof-condeffs 
0
2
0 8 2 3
0 9 0 1
0
end_operator
begin_operator
close_sd5 
3
8 3
13 1
14 1
1
0 6 1 0
0
end_operator
begin_operator
close_sd6 
3
8 3
13 1
14 1
1
0 7 1 0
0
end_operator
begin_operator
open-cb1 
3
8 3
13 1
14 1
2
0 0 0 1
0 11 -1 0
0
end_operator
begin_operator
open-cb2 
3
8 3
13 1
14 1
2
0 1 0 1
0 12 -1 0
0
end_operator
begin_operator
open-sd1 
3
8 3
13 1
14 1
1
0 2 0 1
0
end_operator
begin_operator
open-sd2 
3
8 3
13 1
14 1
1
0 3 0 1
0
end_operator
begin_operator
open-sd3 
3
8 3
13 1
14 1
1
0 4 0 1
0
end_operator
begin_operator
open-sd4 
3
8 3
13 1
14 1
1
0 5 0 1
0
end_operator
begin_operator
open-sd5 
3
8 3
13 1
14 1
1
0 6 0 1
0
end_operator
begin_operator
open-sd6 
3
8 3
13 1
14 1
1
0 7 0 1
0
end_operator
begin_operator
wait_cb1 
0
2
0 8 3 4
0 13 0 1
0
end_operator
begin_operator
wait_cb1-condeff0-no-0 
2
5 1
8 4
1
0 9 -1 0
0
end_operator
begin_operator
wait_cb1-condeff0-no-1 
2
2 1
8 4
1
0 9 -1 0
0
end_operator
begin_operator
wait_cb1-condeff0-yes 
3
2 0
5 0
8 4
3
0 0 -1 1
0 9 -1 0
0 11 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-no-0 
2
3 1
8 4
1
0 10 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-yes 
2
3 0
8 4
3
0 0 -1 1
0 10 -1 0
0 11 -1 0
0
end_operator
begin_operator
wait_cb1-endof-condeffs 
0
3
0 8 4 3
0 9 0 1
0 10 0 1
0
end_operator
begin_operator
wait_cb2 
1
8 3
3
0 1 -1 1
0 12 -1 0
0 14 0 1
0
end_operator
0
