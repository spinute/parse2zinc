begin_version
3
end_version
begin_metric
0
end_metric
20
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
Atom closed-sd2()
Atom not-closed-sd2()
end_variable
begin_variable
var5
-1
2
Atom closed-sd3()
Atom not-closed-sd3()
end_variable
begin_variable
var6
-1
2
Atom closed-sd4()
Atom not-closed-sd4()
end_variable
begin_variable
var7
-1
2
Atom closed-sd5()
Atom not-closed-sd5()
end_variable
begin_variable
var8
-1
2
Atom closed-sd6()
Atom not-closed-sd6()
end_variable
begin_variable
var9
-1
2
Atom closed-sd7()
Atom not-closed-sd7()
end_variable
begin_variable
var10
-1
2
Atom closed-sd8()
Atom not-closed-sd8()
end_variable
begin_variable
var11
-1
2
Atom closed-sd9()
Atom not-closed-sd9()
end_variable
begin_variable
var12
-1
13
Atom do-close_sd1-condeffs()
Atom do-close_sd10-condeffs()
Atom do-close_sd2-condeffs()
Atom do-close_sd3-condeffs()
Atom do-close_sd4-condeffs()
Atom do-close_sd5-condeffs()
Atom do-close_sd6-condeffs()
Atom do-close_sd7-condeffs()
Atom do-close_sd8-condeffs()
Atom do-close_sd9-condeffs()
Atom do-normal()
Atom do-wait_cb1-condeffs()
Atom do-wait_cb2-condeffs()
end_variable
begin_variable
var13
-1
2
Atom done-0()
NegatedAtom done-0()
end_variable
begin_variable
var14
-1
2
Atom done-1()
NegatedAtom done-1()
end_variable
begin_variable
var15
-1
2
Atom goal-reached()
NegatedAtom goal-reached()
end_variable
begin_variable
var16
-1
2
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var17
-1
2
Atom not-closed-cb2()
NegatedAtom not-closed-cb2()
end_variable
begin_variable
var18
-1
2
Atom not-updated-cb1()
Atom updated-cb1()
end_variable
begin_variable
var19
-1
2
Atom not-updated-cb2()
Atom updated-cb2()
end_variable
13
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
13
12 0
12 1
12 2
12 3
12 4
12 5
12 6
12 7
12 8
12 9
12 10
12 11
12 12
end_mutex_group
begin_mutex_group
2
18 0
18 1
end_mutex_group
begin_mutex_group
2
19 0
19 1
end_mutex_group
begin_state
0
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
10
1
1
1
1
1
0
1
end_state
begin_goal
2
12 10
15 0
end_goal
700
begin_operator
close_cb1 
2
12 10
19 1
3
0 0 -1 0
0 16 0 1
0 18 1 0
0
end_operator
begin_operator
close_cb2 
2
12 10
18 1
3
0 1 -1 0
0 17 0 1
0 19 1 0
0
end_operator
begin_operator
close_sd1 
2
18 1
19 1
2
0 2 1 0
0 12 10 0
0
end_operator
begin_operator
close_sd1-condeff0-no-0 
2
6 1
12 0
1
0 13 -1 0
0
end_operator
begin_operator
close_sd1-condeff0-no-1 
2
5 1
12 0
1
0 13 -1 0
0
end_operator
begin_operator
close_sd1-condeff0-no-2 
2
4 1
12 0
1
0 13 -1 0
0
end_operator
begin_operator
close_sd1-condeff0-no-3 
2
12 0
16 0
1
0 13 -1 0
0
end_operator
begin_operator
close_sd1-condeff0-yes 
4
4 0
5 0
6 0
12 0
3
0 0 0 1
0 13 -1 0
0 16 -1 0
0
end_operator
begin_operator
close_sd1-condeff1-no-0 
2
7 1
12 0
1
0 14 -1 0
0
end_operator
begin_operator
close_sd1-condeff1-no-1 
2
3 1
12 0
1
0 14 -1 0
0
end_operator
begin_operator
close_sd1-condeff1-no-2 
2
8 1
12 0
1
0 14 -1 0
0
end_operator
begin_operator
close_sd1-condeff1-no-3 
2
12 0
16 0
1
0 14 -1 0
0
end_operator
begin_operator
close_sd1-condeff1-yes 
4
3 0
7 0
8 0
12 0
3
0 0 0 1
0 14 -1 0
0 16 -1 0
0
end_operator
begin_operator
close_sd1-endof-condeffs 
0
3
0 12 0 10
0 13 0 1
0 14 0 1
0
end_operator
begin_operator
close_sd10 
2
18 1
19 1
2
0 3 1 0
0 12 10 1
0
end_operator
begin_operator
close_sd10-condeff0-no-0 
2
7 1
12 1
1
0 13 -1 0
0
end_operator
begin_operator
close_sd10-condeff0-no-1 
2
8 1
12 1
1
0 13 -1 0
0
end_operator
begin_operator
close_sd10-condeff0-no-2 
2
2 1
12 1
1
0 13 -1 0
0
end_operator
begin_operator
close_sd10-condeff0-no-3 
2
12 1
16 0
1
0 13 -1 0
0
end_operator
begin_operator
close_sd10-condeff0-yes 
4
2 0
7 0
8 0
12 1
3
0 0 0 1
0 13 -1 0
0 16 -1 0
0
end_operator
begin_operator
close_sd10-condeff1-no-0 
2
7 1
12 1
1
0 14 -1 0
0
end_operator
begin_operator
close_sd10-condeff1-no-1 
2
11 1
12 1
1
0 14 -1 0
0
end_operator
begin_operator
close_sd10-condeff1-no-2 
2
10 1
12 1
1
0 14 -1 0
0
end_operator
begin_operator
close_sd10-condeff1-no-3 
2
9 1
12 1
1
0 14 -1 0
0
end_operator
begin_operator
close_sd10-condeff1-no-4 
2
12 1
17 0
1
0 14 -1 0
0
end_operator
begin_operator
close_sd10-condeff1-yes 
5
7 0
9 0
10 0
11 0
12 1
3
0 1 0 1
0 14 -1 0
0 17 -1 0
0
end_operator
begin_operator
close_sd10-endof-condeffs 
0
3
0 12 1 10
0 13 0 1
0 14 0 1
0
end_operator
begin_operator
close_sd2 
2
18 1
19 1
2
0 4 1 0
0 12 10 2
0
end_operator
begin_operator
close_sd2-condeff0-no-0 
2
6 1
12 2
1
0 13 -1 0
0
end_operator
begin_operator
close_sd2-condeff0-no-1 
2
5 1
12 2
1
0 13 -1 0
0
end_operator
begin_operator
close_sd2-condeff0-no-2 
2
2 1
12 2
1
0 13 -1 0
0
end_operator
begin_operator
close_sd2-condeff0-no-3 
2
12 2
16 0
1
0 13 -1 0
0
end_operator
begin_operator
close_sd2-condeff0-yes 
4
2 0
5 0
6 0
12 2
3
0 0 0 1
0 13 -1 0
0 16 -1 0
0
end_operator
begin_operator
close_sd2-condeff1-no-0 
2
6 1
12 2
1
0 14 -1 0
0
end_operator
begin_operator
close_sd2-condeff1-no-1 
2
5 1
12 2
1
0 14 -1 0
0
end_operator
begin_operator
close_sd2-condeff1-no-2 
2
8 1
12 2
1
0 14 -1 0
0
end_operator
begin_operator
close_sd2-condeff1-no-3 
2
11 1
12 2
1
0 14 -1 0
0
end_operator
begin_operator
close_sd2-condeff1-no-4 
2
10 1
12 2
1
0 14 -1 0
0
end_operator
begin_operator
close_sd2-condeff1-no-5 
2
9 1
12 2
1
0 14 -1 0
0
end_operator
begin_operator
close_sd2-condeff1-no-6 
2
12 2
17 0
1
0 14 -1 0
0
end_operator
begin_operator
close_sd2-condeff1-yes 
7
5 0
6 0
8 0
9 0
10 0
11 0
12 2
3
0 1 0 1
0 14 -1 0
0 17 -1 0
0
end_operator
begin_operator
close_sd2-endof-condeffs 
0
3
0 12 2 10
0 13 0 1
0 14 0 1
0
end_operator
begin_operator
close_sd3 
2
18 1
19 1
2
0 5 1 0
0 12 10 3
0
end_operator
begin_operator
close_sd3-condeff0-no-0 
2
6 1
12 3
1
0 13 -1 0
0
end_operator
begin_operator
close_sd3-condeff0-no-1 
2
4 1
12 3
1
0 13 -1 0
0
end_operator
begin_operator
close_sd3-condeff0-no-2 
2
2 1
12 3
1
0 13 -1 0
0
end_operator
begin_operator
close_sd3-condeff0-no-3 
2
12 3
16 0
1
0 13 -1 0
0
end_operator
begin_operator
close_sd3-condeff0-yes 
4
2 0
4 0
6 0
12 3
3
0 0 0 1
0 13 -1 0
0 16 -1 0
0
end_operator
begin_operator
close_sd3-condeff1-no-0 
2
6 1
12 3
1
0 14 -1 0
0
end_operator
begin_operator
close_sd3-condeff1-no-1 
2
4 1
12 3
1
0 14 -1 0
0
end_operator
begin_operator
close_sd3-condeff1-no-2 
2
8 1
12 3
1
0 14 -1 0
0
end_operator
begin_operator
close_sd3-condeff1-no-3 
2
11 1
12 3
1
0 14 -1 0
0
end_operator
begin_operator
close_sd3-condeff1-no-4 
2
10 1
12 3
1
0 14 -1 0
0
end_operator
begin_operator
close_sd3-condeff1-no-5 
2
9 1
12 3
1
0 14 -1 0
0
end_operator
begin_operator
close_sd3-condeff1-no-6 
2
12 3
17 0
1
0 14 -1 0
0
end_operator
begin_operator
close_sd3-condeff1-yes 
7
4 0
6 0
8 0
9 0
10 0
11 0
12 3
3
0 1 0 1
0 14 -1 0
0 17 -1 0
0
end_operator
begin_operator
close_sd3-endof-condeffs 
0
3
0 12 3 10
0 13 0 1
0 14 0 1
0
end_operator
begin_operator
close_sd4 
2
18 1
19 1
2
0 6 1 0
0 12 10 4
0
end_operator
begin_operator
close_sd4-condeff0-no-0 
2
5 1
12 4
1
0 13 -1 0
0
end_operator
begin_operator
close_sd4-condeff0-no-1 
2
4 1
12 4
1
0 13 -1 0
0
end_operator
begin_operator
close_sd4-condeff0-no-2 
2
2 1
12 4
1
0 13 -1 0
0
end_operator
begin_operator
close_sd4-condeff0-no-3 
2
12 4
16 0
1
0 13 -1 0
0
end_operator
begin_operator
close_sd4-condeff0-yes 
4
2 0
4 0
5 0
12 4
3
0 0 0 1
0 13 -1 0
0 16 -1 0
0
end_operator
begin_operator
close_sd4-condeff1-no-0 
2
5 1
12 4
1
0 14 -1 0
0
end_operator
begin_operator
close_sd4-condeff1-no-1 
2
4 1
12 4
1
0 14 -1 0
0
end_operator
begin_operator
close_sd4-condeff1-no-2 
2
8 1
12 4
1
0 14 -1 0
0
end_operator
begin_operator
close_sd4-condeff1-no-3 
2
11 1
12 4
1
0 14 -1 0
0
end_operator
begin_operator
close_sd4-condeff1-no-4 
2
10 1
12 4
1
0 14 -1 0
0
end_operator
begin_operator
close_sd4-condeff1-no-5 
2
9 1
12 4
1
0 14 -1 0
0
end_operator
begin_operator
close_sd4-condeff1-no-6 
2
12 4
17 0
1
0 14 -1 0
0
end_operator
begin_operator
close_sd4-condeff1-yes 
7
4 0
5 0
8 0
9 0
10 0
11 0
12 4
3
0 1 0 1
0 14 -1 0
0 17 -1 0
0
end_operator
begin_operator
close_sd4-endof-condeffs 
0
3
0 12 4 10
0 13 0 1
0 14 0 1
0
end_operator
begin_operator
close_sd5 
2
18 1
19 1
2
0 7 1 0
0 12 10 5
0
end_operator
begin_operator
close_sd5-condeff0-no-0 
2
3 1
12 5
1
0 13 -1 0
0
end_operator
begin_operator
close_sd5-condeff0-no-1 
2
8 1
12 5
1
0 13 -1 0
0
end_operator
begin_operator
close_sd5-condeff0-no-2 
2
2 1
12 5
1
0 13 -1 0
0
end_operator
begin_operator
close_sd5-condeff0-no-3 
2
12 5
16 0
1
0 13 -1 0
0
end_operator
begin_operator
close_sd5-condeff0-yes 
4
2 0
3 0
8 0
12 5
3
0 0 0 1
0 13 -1 0
0 16 -1 0
0
end_operator
begin_operator
close_sd5-condeff1-no-0 
2
3 1
12 5
1
0 14 -1 0
0
end_operator
begin_operator
close_sd5-condeff1-no-1 
2
11 1
12 5
1
0 14 -1 0
0
end_operator
begin_operator
close_sd5-condeff1-no-2 
2
10 1
12 5
1
0 14 -1 0
0
end_operator
begin_operator
close_sd5-condeff1-no-3 
2
9 1
12 5
1
0 14 -1 0
0
end_operator
begin_operator
close_sd5-condeff1-no-4 
2
12 5
17 0
1
0 14 -1 0
0
end_operator
begin_operator
close_sd5-condeff1-yes 
5
3 0
9 0
10 0
11 0
12 5
3
0 1 0 1
0 14 -1 0
0 17 -1 0
0
end_operator
begin_operator
close_sd5-endof-condeffs 
0
3
0 12 5 10
0 13 0 1
0 14 0 1
0
end_operator
begin_operator
close_sd6 
2
18 1
19 1
2
0 8 1 0
0 12 10 6
0
end_operator
begin_operator
close_sd6-condeff0-no-0 
2
7 1
12 6
1
0 13 -1 0
0
end_operator
begin_operator
close_sd6-condeff0-no-1 
2
3 1
12 6
1
0 13 -1 0
0
end_operator
begin_operator
close_sd6-condeff0-no-2 
2
2 1
12 6
1
0 13 -1 0
0
end_operator
begin_operator
close_sd6-condeff0-no-3 
2
12 6
16 0
1
0 13 -1 0
0
end_operator
begin_operator
close_sd6-condeff0-yes 
4
2 0
3 0
7 0
12 6
3
0 0 0 1
0 13 -1 0
0 16 -1 0
0
end_operator
begin_operator
close_sd6-condeff1-no-0 
2
6 1
12 6
1
0 14 -1 0
0
end_operator
begin_operator
close_sd6-condeff1-no-1 
2
5 1
12 6
1
0 14 -1 0
0
end_operator
begin_operator
close_sd6-condeff1-no-2 
2
4 1
12 6
1
0 14 -1 0
0
end_operator
begin_operator
close_sd6-condeff1-no-3 
2
11 1
12 6
1
0 14 -1 0
0
end_operator
begin_operator
close_sd6-condeff1-no-4 
2
10 1
12 6
1
0 14 -1 0
0
end_operator
begin_operator
close_sd6-condeff1-no-5 
2
9 1
12 6
1
0 14 -1 0
0
end_operator
begin_operator
close_sd6-condeff1-no-6 
2
12 6
17 0
1
0 14 -1 0
0
end_operator
begin_operator
close_sd6-condeff1-yes 
7
4 0
5 0
6 0
9 0
10 0
11 0
12 6
3
0 1 0 1
0 14 -1 0
0 17 -1 0
0
end_operator
begin_operator
close_sd6-endof-condeffs 
0
3
0 12 6 10
0 13 0 1
0 14 0 1
0
end_operator
begin_operator
close_sd7 
2
18 1
19 1
2
0 9 1 0
0 12 10 7
0
end_operator
begin_operator
close_sd7-condeff0-no-0 
2
6 1
12 7
1
0 13 -1 0
0
end_operator
begin_operator
close_sd7-condeff0-no-1 
2
5 1
12 7
1
0 13 -1 0
0
end_operator
begin_operator
close_sd7-condeff0-no-2 
2
4 1
12 7
1
0 13 -1 0
0
end_operator
begin_operator
close_sd7-condeff0-no-3 
2
8 1
12 7
1
0 13 -1 0
0
end_operator
begin_operator
close_sd7-condeff0-no-4 
2
11 1
12 7
1
0 13 -1 0
0
end_operator
begin_operator
close_sd7-condeff0-no-5 
2
10 1
12 7
1
0 13 -1 0
0
end_operator
begin_operator
close_sd7-condeff0-no-6 
2
12 7
17 0
1
0 13 -1 0
0
end_operator
begin_operator
close_sd7-condeff0-yes 
7
4 0
5 0
6 0
8 0
10 0
11 0
12 7
3
0 1 0 1
0 13 -1 0
0 17 -1 0
0
end_operator
begin_operator
close_sd7-condeff1-no-0 
2
7 1
12 7
1
0 14 -1 0
0
end_operator
begin_operator
close_sd7-condeff1-no-1 
2
3 1
12 7
1
0 14 -1 0
0
end_operator
begin_operator
close_sd7-condeff1-no-2 
2
11 1
12 7
1
0 14 -1 0
0
end_operator
begin_operator
close_sd7-condeff1-no-3 
2
10 1
12 7
1
0 14 -1 0
0
end_operator
begin_operator
close_sd7-condeff1-no-4 
2
12 7
17 0
1
0 14 -1 0
0
end_operator
begin_operator
close_sd7-condeff1-yes 
5
3 0
7 0
10 0
11 0
12 7
3
0 1 0 1
0 14 -1 0
0 17 -1 0
0
end_operator
begin_operator
close_sd7-endof-condeffs 
0
3
0 12 7 10
0 13 0 1
0 14 0 1
0
end_operator
begin_operator
close_sd8 
2
18 1
19 1
2
0 10 1 0
0 12 10 8
0
end_operator
begin_operator
close_sd8-condeff0-no-0 
2
6 1
12 8
1
0 13 -1 0
0
end_operator
begin_operator
close_sd8-condeff0-no-1 
2
5 1
12 8
1
0 13 -1 0
0
end_operator
begin_operator
close_sd8-condeff0-no-2 
2
4 1
12 8
1
0 13 -1 0
0
end_operator
begin_operator
close_sd8-condeff0-no-3 
2
8 1
12 8
1
0 13 -1 0
0
end_operator
begin_operator
close_sd8-condeff0-no-4 
2
11 1
12 8
1
0 13 -1 0
0
end_operator
begin_operator
close_sd8-condeff0-no-5 
2
9 1
12 8
1
0 13 -1 0
0
end_operator
begin_operator
close_sd8-condeff0-no-6 
2
12 8
17 0
1
0 13 -1 0
0
end_operator
begin_operator
close_sd8-condeff0-yes 
7
4 0
5 0
6 0
8 0
9 0
11 0
12 8
3
0 1 0 1
0 13 -1 0
0 17 -1 0
0
end_operator
begin_operator
close_sd8-condeff1-no-0 
2
7 1
12 8
1
0 14 -1 0
0
end_operator
begin_operator
close_sd8-condeff1-no-1 
2
3 1
12 8
1
0 14 -1 0
0
end_operator
begin_operator
close_sd8-condeff1-no-2 
2
11 1
12 8
1
0 14 -1 0
0
end_operator
begin_operator
close_sd8-condeff1-no-3 
2
9 1
12 8
1
0 14 -1 0
0
end_operator
begin_operator
close_sd8-condeff1-no-4 
2
12 8
17 0
1
0 14 -1 0
0
end_operator
begin_operator
close_sd8-condeff1-yes 
5
3 0
7 0
9 0
11 0
12 8
3
0 1 0 1
0 14 -1 0
0 17 -1 0
0
end_operator
begin_operator
close_sd8-endof-condeffs 
0
3
0 12 8 10
0 13 0 1
0 14 0 1
0
end_operator
begin_operator
close_sd9 
2
18 1
19 1
2
0 11 1 0
0 12 10 9
0
end_operator
begin_operator
close_sd9-condeff0-no-0 
2
6 1
12 9
1
0 13 -1 0
0
end_operator
begin_operator
close_sd9-condeff0-no-1 
2
5 1
12 9
1
0 13 -1 0
0
end_operator
begin_operator
close_sd9-condeff0-no-2 
2
4 1
12 9
1
0 13 -1 0
0
end_operator
begin_operator
close_sd9-condeff0-no-3 
2
8 1
12 9
1
0 13 -1 0
0
end_operator
begin_operator
close_sd9-condeff0-no-4 
2
10 1
12 9
1
0 13 -1 0
0
end_operator
begin_operator
close_sd9-condeff0-no-5 
2
9 1
12 9
1
0 13 -1 0
0
end_operator
begin_operator
close_sd9-condeff0-no-6 
2
12 9
17 0
1
0 13 -1 0
0
end_operator
begin_operator
close_sd9-condeff0-yes 
7
4 0
5 0
6 0
8 0
9 0
10 0
12 9
3
0 1 0 1
0 13 -1 0
0 17 -1 0
0
end_operator
begin_operator
close_sd9-condeff1-no-0 
2
7 1
12 9
1
0 14 -1 0
0
end_operator
begin_operator
close_sd9-condeff1-no-1 
2
3 1
12 9
1
0 14 -1 0
0
end_operator
begin_operator
close_sd9-condeff1-no-2 
2
10 1
12 9
1
0 14 -1 0
0
end_operator
begin_operator
close_sd9-condeff1-no-3 
2
9 1
12 9
1
0 14 -1 0
0
end_operator
begin_operator
close_sd9-condeff1-no-4 
2
12 9
17 0
1
0 14 -1 0
0
end_operator
begin_operator
close_sd9-condeff1-yes 
5
3 0
7 0
9 0
10 0
12 9
3
0 1 0 1
0 14 -1 0
0 17 -1 0
0
end_operator
begin_operator
close_sd9-endof-condeffs 
0
3
0 12 9 10
0 13 0 1
0 14 0 1
0
end_operator
begin_operator
open-cb1 
3
12 10
18 1
19 1
2
0 0 0 1
0 16 -1 0
0
end_operator
begin_operator
open-cb2 
3
12 10
18 1
19 1
2
0 1 0 1
0 17 -1 0
0
end_operator
begin_operator
open-sd1 
3
12 10
18 1
19 1
1
0 2 0 1
0
end_operator
begin_operator
open-sd10 
3
12 10
18 1
19 1
1
0 3 0 1
0
end_operator
begin_operator
open-sd2 
3
12 10
18 1
19 1
1
0 4 0 1
0
end_operator
begin_operator
open-sd3 
3
12 10
18 1
19 1
1
0 5 0 1
0
end_operator
begin_operator
open-sd4 
3
12 10
18 1
19 1
1
0 6 0 1
0
end_operator
begin_operator
open-sd5 
3
12 10
18 1
19 1
1
0 7 0 1
0
end_operator
begin_operator
open-sd6 
3
12 10
18 1
19 1
1
0 8 0 1
0
end_operator
begin_operator
open-sd7 
3
12 10
18 1
19 1
1
0 9 0 1
0
end_operator
begin_operator
open-sd8 
3
12 10
18 1
19 1
1
0 10 0 1
0
end_operator
begin_operator
open-sd9 
3
12 10
18 1
19 1
1
0 11 0 1
0
end_operator
begin_operator
reach-goal-0 
12
0 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-1 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-10 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-100 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-101 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-102 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-103 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-104 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-105 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-106 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-107 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-108 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-109 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-11 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-110 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-111 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-112 
12
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-113 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-114 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-115 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-116 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-117 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-118 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-119 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-12 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-120 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-121 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-122 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-123 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-124 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-125 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-126 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-127 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-128 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-129 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-13 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-130 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-131 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-132 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-133 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-134 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-135 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-136 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-137 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-138 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-139 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-14 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-140 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-141 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-142 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-143 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-144 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-145 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-146 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-147 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-148 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-149 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-15 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-150 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-151 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-152 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-153 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-154 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-155 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-156 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-157 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-158 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-159 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-16 
12
0 0
1 0
2 0
3 0
4 0
5 0
8 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-160 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-161 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-162 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-163 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-164 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-165 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-166 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-167 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-168 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-169 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-17 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-170 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-171 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-172 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-173 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-174 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-175 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-176 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-177 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-178 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-179 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-18 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-180 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-181 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-182 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-183 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-184 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-185 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-186 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-187 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-188 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-189 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-19 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-190 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-191 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-192 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-193 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-194 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-195 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-196 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-197 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-198 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-199 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-2 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-20 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-200 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-201 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-202 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-203 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-204 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-205 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-206 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-207 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-208 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-209 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-21 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-210 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-211 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-212 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-213 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-214 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-215 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-216 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-217 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-218 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-219 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-22 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-220 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-221 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-222 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-223 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-224 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-225 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-226 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-227 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-228 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-229 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-23 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-230 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-231 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-232 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-233 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-234 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-235 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-236 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-237 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-238 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-239 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-24 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-240 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-241 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-242 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-243 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-244 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-245 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-246 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-247 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-248 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-249 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-25 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-250 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-251 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-252 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-253 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-254 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-255 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-256 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-257 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-258 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-259 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-26 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-260 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-261 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-262 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-263 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-264 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-265 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-266 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-267 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-268 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-269 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-27 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-270 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-271 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-272 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-273 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-274 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-275 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-276 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-277 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-278 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-279 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-28 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-280 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-281 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-282 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-283 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-284 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-285 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-286 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-287 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-288 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-289 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-29 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-290 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-291 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-292 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-293 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-294 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-295 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-296 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-297 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-298 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-299 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-3 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-30 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-300 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-301 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-302 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-303 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-304 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-305 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-306 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-307 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-308 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-309 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-31 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-310 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-311 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-312 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-313 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-314 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-315 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-316 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-317 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-318 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-319 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-32 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-320 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-321 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-322 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-323 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-324 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-325 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-326 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-327 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-328 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-329 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-33 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-330 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-331 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-332 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-333 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-334 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-335 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-336 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-337 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-338 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-339 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-34 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-340 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-341 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-342 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-343 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-344 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-345 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-346 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-347 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-348 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-349 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-35 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-350 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-351 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-352 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-353 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-354 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-355 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-356 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-357 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-358 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-359 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-36 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-360 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-361 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-362 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-363 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-364 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-365 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-366 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-367 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-368 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-369 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-37 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-370 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-371 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-372 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-373 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-374 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-375 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-376 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-377 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-378 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-379 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-38 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-380 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-381 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-382 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-383 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-384 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-385 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-386 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-387 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-388 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-389 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-39 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-390 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-391 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-392 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-393 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-394 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-395 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-396 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-397 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-398 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-399 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-4 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-40 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-400 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-401 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-402 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-403 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-404 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-405 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-406 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-407 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-408 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-409 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-41 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-410 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-411 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-412 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-413 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-414 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-415 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-416 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-417 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-418 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-419 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-42 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-420 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-421 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-422 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-423 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-424 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-425 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-426 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-427 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-428 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-429 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-43 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-430 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-431 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-432 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-433 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-434 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-435 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-436 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-437 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-438 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-439 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-44 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-440 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-441 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-442 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-443 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-444 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-445 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-446 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-447 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-448 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-449 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-45 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-450 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-451 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-452 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-453 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-454 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-455 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-456 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-457 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-458 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-459 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-46 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-460 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-461 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-462 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-463 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-464 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-465 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-466 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-467 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-468 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-469 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-47 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-470 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-471 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-472 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-473 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-474 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-475 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-476 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-477 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-478 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-479 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-48 
12
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-480 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-481 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-482 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-483 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-484 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-485 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-486 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-487 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-488 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-489 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-49 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-490 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-491 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-492 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-493 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-494 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-495 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-496 
12
0 0
1 0
2 0
3 0
4 0
5 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-497 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-498 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-499 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-5 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-50 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-500 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-501 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-502 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-503 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-504 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-505 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-506 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-507 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-508 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-509 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-51 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-510 
12
0 0
1 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-511 
12
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-52 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-53 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-54 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-55 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-56 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-57 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-58 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-59 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-6 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-60 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-61 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-62 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-63 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-64 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-65 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-66 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-67 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-68 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-69 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-7 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-70 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-71 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-72 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-73 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-74 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-75 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-76 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-77 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-78 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-79 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-8 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-80 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-81 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-82 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-83 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-84 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-85 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-86 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-87 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-88 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-89 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-9 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-90 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-91 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-92 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-93 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-94 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-95 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-96 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-97 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-98 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
reach-goal-99 
13
0 0
1 0
2 0
3 0
4 0
5 0
8 0
9 0
10 0
11 0
12 10
18 1
19 1
1
0 15 -1 0
0
end_operator
begin_operator
wait_cb1 
0
2
0 12 10 11
0 18 0 1
0
end_operator
begin_operator
wait_cb1-condeff0-no-0 
2
6 1
12 11
1
0 13 -1 0
0
end_operator
begin_operator
wait_cb1-condeff0-no-1 
2
5 1
12 11
1
0 13 -1 0
0
end_operator
begin_operator
wait_cb1-condeff0-no-2 
2
4 1
12 11
1
0 13 -1 0
0
end_operator
begin_operator
wait_cb1-condeff0-no-3 
2
2 1
12 11
1
0 13 -1 0
0
end_operator
begin_operator
wait_cb1-condeff0-yes 
5
2 0
4 0
5 0
6 0
12 11
3
0 0 -1 1
0 13 -1 0
0 16 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-no-0 
2
7 1
12 11
1
0 14 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-no-1 
2
3 1
12 11
1
0 14 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-no-2 
2
8 1
12 11
1
0 14 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-no-3 
2
2 1
12 11
1
0 14 -1 0
0
end_operator
begin_operator
wait_cb1-condeff1-yes 
5
2 0
3 0
7 0
8 0
12 11
3
0 0 -1 1
0 14 -1 0
0 16 -1 0
0
end_operator
begin_operator
wait_cb1-endof-condeffs 
0
3
0 12 11 10
0 13 0 1
0 14 0 1
0
end_operator
begin_operator
wait_cb2 
0
2
0 12 10 12
0 19 0 1
0
end_operator
begin_operator
wait_cb2-condeff0-no-0 
2
6 1
12 12
1
0 13 -1 0
0
end_operator
begin_operator
wait_cb2-condeff0-no-1 
2
5 1
12 12
1
0 13 -1 0
0
end_operator
begin_operator
wait_cb2-condeff0-no-2 
2
4 1
12 12
1
0 13 -1 0
0
end_operator
begin_operator
wait_cb2-condeff0-no-3 
2
8 1
12 12
1
0 13 -1 0
0
end_operator
begin_operator
wait_cb2-condeff0-no-4 
2
11 1
12 12
1
0 13 -1 0
0
end_operator
begin_operator
wait_cb2-condeff0-no-5 
2
10 1
12 12
1
0 13 -1 0
0
end_operator
begin_operator
wait_cb2-condeff0-no-6 
2
9 1
12 12
1
0 13 -1 0
0
end_operator
begin_operator
wait_cb2-condeff0-yes 
8
4 0
5 0
6 0
8 0
9 0
10 0
11 0
12 12
3
0 1 -1 1
0 13 -1 0
0 17 -1 0
0
end_operator
begin_operator
wait_cb2-condeff1-no-0 
2
7 1
12 12
1
0 14 -1 0
0
end_operator
begin_operator
wait_cb2-condeff1-no-1 
2
3 1
12 12
1
0 14 -1 0
0
end_operator
begin_operator
wait_cb2-condeff1-no-2 
2
11 1
12 12
1
0 14 -1 0
0
end_operator
begin_operator
wait_cb2-condeff1-no-3 
2
10 1
12 12
1
0 14 -1 0
0
end_operator
begin_operator
wait_cb2-condeff1-no-4 
2
9 1
12 12
1
0 14 -1 0
0
end_operator
begin_operator
wait_cb2-condeff1-yes 
6
3 0
7 0
9 0
10 0
11 0
12 12
3
0 1 -1 1
0 14 -1 0
0 17 -1 0
0
end_operator
begin_operator
wait_cb2-endof-condeffs 
0
3
0 12 12 10
0 13 0 1
0 14 0 1
0
end_operator
0
