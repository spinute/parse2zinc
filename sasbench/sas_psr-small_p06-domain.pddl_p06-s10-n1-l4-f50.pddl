begin_version
3
end_version
begin_metric
0
end_metric
11
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
3
Atom do-close_sd1-condeffs()
Atom do-normal()
Atom do-wait_cb1-condeffs()
end_variable
begin_variable
var8
-1
2
Atom done-0()
NegatedAtom done-0()
end_variable
begin_variable
var9
-1
2
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var10
-1
2
Atom not-updated-cb1()
Atom updated-cb1()
end_variable
8
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
3
7 0
7 1
7 2
end_mutex_group
begin_mutex_group
2
10 0
10 1
end_mutex_group
begin_state
0
0
0
0
0
1
0
1
1
1
0
end_state
begin_goal
3
0 0
7 1
10 1
end_goal
21
begin_operator
close_cb1 
1
7 1
3
0 0 -1 0
0 9 0 1
0 10 1 0
0
end_operator
begin_operator
close_sd1 
1
10 1
2
0 1 1 0
0 7 1 0
0
end_operator
begin_operator
close_sd1-condeff0-no-0 
2
7 0
9 0
1
0 8 -1 0
0
end_operator
begin_operator
close_sd1-condeff0-yes 
1
7 0
3
0 0 0 1
0 8 -1 0
0 9 -1 0
0
end_operator
begin_operator
close_sd1-endof-condeffs 
0
2
0 7 0 1
0 8 0 1
0
end_operator
begin_operator
close_sd2 
2
7 1
10 1
1
0 2 1 0
0
end_operator
begin_operator
close_sd3 
2
7 1
10 1
1
0 3 1 0
0
end_operator
begin_operator
close_sd4 
2
7 1
10 1
1
0 4 1 0
0
end_operator
begin_operator
close_sd5 
2
7 1
10 1
1
0 5 1 0
0
end_operator
begin_operator
close_sd6 
2
7 1
10 1
1
0 6 1 0
0
end_operator
begin_operator
open-cb1 
2
7 1
10 1
2
0 0 0 1
0 9 -1 0
0
end_operator
begin_operator
open-sd1 
2
7 1
10 1
1
0 1 0 1
0
end_operator
begin_operator
open-sd2 
2
7 1
10 1
1
0 2 0 1
0
end_operator
begin_operator
open-sd3 
2
7 1
10 1
1
0 3 0 1
0
end_operator
begin_operator
open-sd4 
2
7 1
10 1
1
0 4 0 1
0
end_operator
begin_operator
open-sd5 
2
7 1
10 1
1
0 5 0 1
0
end_operator
begin_operator
open-sd6 
2
7 1
10 1
1
0 6 0 1
0
end_operator
begin_operator
wait_cb1 
0
2
0 7 1 2
0 10 0 1
0
end_operator
begin_operator
wait_cb1-condeff0-no-0 
2
1 1
7 2
1
0 8 -1 0
0
end_operator
begin_operator
wait_cb1-condeff0-yes 
2
1 0
7 2
3
0 0 -1 1
0 8 -1 0
0 9 -1 0
0
end_operator
begin_operator
wait_cb1-endof-condeffs 
0
2
0 7 2 1
0 8 0 1
0
end_operator
0
