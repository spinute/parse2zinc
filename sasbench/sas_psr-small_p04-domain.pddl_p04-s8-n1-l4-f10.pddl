begin_version
3
end_version
begin_metric
0
end_metric
12
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
7
Atom do-close_sd1-condeffs()
Atom do-close_sd2-condeffs()
Atom do-close_sd3-condeffs()
Atom do-close_sd4-condeffs()
Atom do-close_sd5-condeffs()
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
Atom done-1()
NegatedAtom done-1()
end_variable
begin_variable
var10
-1
2
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var11
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
7
7 0
7 1
7 2
7 3
7 4
7 5
7 6
end_mutex_group
begin_mutex_group
2
11 0
11 1
end_mutex_group
begin_state
0
0
0
1
0
0
0
5
1
1
1
0
end_state
begin_goal
7
0 0
1 0
2 0
4 0
6 0
7 5
11 1
end_goal
62
begin_operator
close_cb1 
1
7 5
3
0 0 -1 0
0 10 0 1
0 11 1 0
0
end_operator
begin_operator
close_sd1 
1
11 1
2
0 1 1 0
0 7 5 0
0
end_operator
begin_operator
close_sd1-condeff0-no-0 
2
3 1
7 0
1
0 8 -1 0
0
end_operator
begin_operator
close_sd1-condeff0-no-1 
2
2 1
7 0
1
0 8 -1 0
0
end_operator
begin_operator
close_sd1-condeff0-no-2 
2
7 0
10 0
1
0 8 -1 0
0
end_operator
begin_operator
close_sd1-condeff0-yes 
3
2 0
3 0
7 0
3
0 0 0 1
0 8 -1 0
0 10 -1 0
0
end_operator
begin_operator
close_sd1-condeff1-no-0 
2
5 1
7 0
1
0 9 -1 0
0
end_operator
begin_operator
close_sd1-condeff1-no-1 
2
4 1
7 0
1
0 9 -1 0
0
end_operator
begin_operator
close_sd1-condeff1-no-2 
2
2 1
7 0
1
0 9 -1 0
0
end_operator
begin_operator
close_sd1-condeff1-no-3 
2
7 0
10 0
1
0 9 -1 0
0
end_operator
begin_operator
close_sd1-condeff1-yes 
4
2 0
4 0
5 0
7 0
3
0 0 0 1
0 9 -1 0
0 10 -1 0
0
end_operator
begin_operator
close_sd1-endof-condeffs 
0
3
0 7 0 5
0 8 0 1
0 9 0 1
0
end_operator
begin_operator
close_sd2 
1
11 1
2
0 2 1 0
0 7 5 1
0
end_operator
begin_operator
close_sd2-condeff0-no-0 
2
3 1
7 1
1
0 8 -1 0
0
end_operator
begin_operator
close_sd2-condeff0-no-1 
2
1 1
7 1
1
0 8 -1 0
0
end_operator
begin_operator
close_sd2-condeff0-no-2 
2
7 1
10 0
1
0 8 -1 0
0
end_operator
begin_operator
close_sd2-condeff0-yes 
3
1 0
3 0
7 1
3
0 0 0 1
0 8 -1 0
0 10 -1 0
0
end_operator
begin_operator
close_sd2-condeff1-no-0 
2
5 1
7 1
1
0 9 -1 0
0
end_operator
begin_operator
close_sd2-condeff1-no-1 
2
4 1
7 1
1
0 9 -1 0
0
end_operator
begin_operator
close_sd2-condeff1-no-2 
2
1 1
7 1
1
0 9 -1 0
0
end_operator
begin_operator
close_sd2-condeff1-no-3 
2
7 1
10 0
1
0 9 -1 0
0
end_operator
begin_operator
close_sd2-condeff1-yes 
4
1 0
4 0
5 0
7 1
3
0 0 0 1
0 9 -1 0
0 10 -1 0
0
end_operator
begin_operator
close_sd2-endof-condeffs 
0
3
0 7 1 5
0 8 0 1
0 9 0 1
0
end_operator
begin_operator
close_sd3 
1
11 1
2
0 3 1 0
0 7 5 2
0
end_operator
begin_operator
close_sd3-condeff0-no-0 
2
2 1
7 2
1
0 8 -1 0
0
end_operator
begin_operator
close_sd3-condeff0-no-1 
2
1 1
7 2
1
0 8 -1 0
0
end_operator
begin_operator
close_sd3-condeff0-no-2 
2
7 2
10 0
1
0 8 -1 0
0
end_operator
begin_operator
close_sd3-condeff0-yes 
3
1 0
2 0
7 2
3
0 0 0 1
0 8 -1 0
0 10 -1 0
0
end_operator
begin_operator
close_sd3-endof-condeffs 
0
2
0 7 2 5
0 8 0 1
0
end_operator
begin_operator
close_sd4 
1
11 1
2
0 4 1 0
0 7 5 3
0
end_operator
begin_operator
close_sd4-condeff0-no-0 
2
5 1
7 3
1
0 8 -1 0
0
end_operator
begin_operator
close_sd4-condeff0-no-1 
2
2 1
7 3
1
0 8 -1 0
0
end_operator
begin_operator
close_sd4-condeff0-no-2 
2
1 1
7 3
1
0 8 -1 0
0
end_operator
begin_operator
close_sd4-condeff0-no-3 
2
7 3
10 0
1
0 8 -1 0
0
end_operator
begin_operator
close_sd4-condeff0-yes 
4
1 0
2 0
5 0
7 3
3
0 0 0 1
0 8 -1 0
0 10 -1 0
0
end_operator
begin_operator
close_sd4-endof-condeffs 
0
2
0 7 3 5
0 8 0 1
0
end_operator
begin_operator
close_sd5 
1
11 1
2
0 5 1 0
0 7 5 4
0
end_operator
begin_operator
close_sd5-condeff0-no-0 
2
4 1
7 4
1
0 8 -1 0
0
end_operator
begin_operator
close_sd5-condeff0-no-1 
2
2 1
7 4
1
0 8 -1 0
0
end_operator
begin_operator
close_sd5-condeff0-no-2 
2
1 1
7 4
1
0 8 -1 0
0
end_operator
begin_operator
close_sd5-condeff0-no-3 
2
7 4
10 0
1
0 8 -1 0
0
end_operator
begin_operator
close_sd5-condeff0-yes 
4
1 0
2 0
4 0
7 4
3
0 0 0 1
0 8 -1 0
0 10 -1 0
0
end_operator
begin_operator
close_sd5-endof-condeffs 
0
2
0 7 4 5
0 8 0 1
0
end_operator
begin_operator
close_sd6 
2
7 5
11 1
1
0 6 1 0
0
end_operator
begin_operator
open-cb1 
2
7 5
11 1
2
0 0 0 1
0 10 -1 0
0
end_operator
begin_operator
open-sd1 
2
7 5
11 1
1
0 1 0 1
0
end_operator
begin_operator
open-sd2 
2
7 5
11 1
1
0 2 0 1
0
end_operator
begin_operator
open-sd3 
2
7 5
11 1
1
0 3 0 1
0
end_operator
begin_operator
open-sd4 
2
7 5
11 1
1
0 4 0 1
0
end_operator
begin_operator
open-sd5 
2
7 5
11 1
1
0 5 0 1
0
end_operator
begin_operator
open-sd6 
2
7 5
11 1
1
0 6 0 1
0
end_operator
begin_operator
wait_cb1 
0
2
0 7 5 6
0 11 0 1
0
end_operator
begin_operator
wait_cb1-condeff0-no-0 
2
3 1
7 6
1
0 8 -1 0
0
end_operator
begin_operator
wait_cb1-condeff0-no-1 
2
2 1
7 6
1
0 8 -1 0
0
end_operator
begin_operator
wait_cb1-condeff0-no-2 
2
1 1
7 6
1
0 8 -1 0
0
end_operator
begin_operator
wait_cb1-condeff0-yes 
4
1 0
2 0
3 0
7 6
3
0 0 -1 1
0 8 -1 0
0 10 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-no-0 
2
5 1
7 6
1
0 9 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-no-1 
2
4 1
7 6
1
0 9 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-no-2 
2
2 1
7 6
1
0 9 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-no-3 
2
1 1
7 6
1
0 9 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-yes 
5
1 0
2 0
4 0
5 0
7 6
3
0 0 -1 1
0 9 -1 0
0 10 -1 0
0
end_operator
begin_operator
wait_cb1-endof-condeffs 
0
3
0 7 6 5
0 8 0 1
0 9 0 1
0
end_operator
0
