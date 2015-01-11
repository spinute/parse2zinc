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
13
Atom at(package1, city1-1)
Atom at(package1, city1-2)
Atom at(package1, city2-1)
Atom at(package1, city2-2)
Atom at(package1, city3-1)
Atom at(package1, city3-2)
Atom in(package1, plane1)
Atom in(package1, truck1)
Atom in(package1, truck2)
Atom in(package1, truck3)
Atom in(package1, truck4)
Atom in(package1, truck5)
Atom in(package1, truck6)
end_variable
begin_variable
var1
-1
13
Atom at(package2, city1-1)
Atom at(package2, city1-2)
Atom at(package2, city2-1)
Atom at(package2, city2-2)
Atom at(package2, city3-1)
Atom at(package2, city3-2)
Atom in(package2, plane1)
Atom in(package2, truck1)
Atom in(package2, truck2)
Atom in(package2, truck3)
Atom in(package2, truck4)
Atom in(package2, truck5)
Atom in(package2, truck6)
end_variable
begin_variable
var2
-1
13
Atom at(package3, city1-1)
Atom at(package3, city1-2)
Atom at(package3, city2-1)
Atom at(package3, city2-2)
Atom at(package3, city3-1)
Atom at(package3, city3-2)
Atom in(package3, plane1)
Atom in(package3, truck1)
Atom in(package3, truck2)
Atom in(package3, truck3)
Atom in(package3, truck4)
Atom in(package3, truck5)
Atom in(package3, truck6)
end_variable
begin_variable
var3
-1
13
Atom at(package4, city1-1)
Atom at(package4, city1-2)
Atom at(package4, city2-1)
Atom at(package4, city2-2)
Atom at(package4, city3-1)
Atom at(package4, city3-2)
Atom in(package4, plane1)
Atom in(package4, truck1)
Atom in(package4, truck2)
Atom in(package4, truck3)
Atom in(package4, truck4)
Atom in(package4, truck5)
Atom in(package4, truck6)
end_variable
begin_variable
var4
-1
13
Atom at(package5, city1-1)
Atom at(package5, city1-2)
Atom at(package5, city2-1)
Atom at(package5, city2-2)
Atom at(package5, city3-1)
Atom at(package5, city3-2)
Atom in(package5, plane1)
Atom in(package5, truck1)
Atom in(package5, truck2)
Atom in(package5, truck3)
Atom in(package5, truck4)
Atom in(package5, truck5)
Atom in(package5, truck6)
end_variable
begin_variable
var5
-1
3
Atom at(plane1, city1-2)
Atom at(plane1, city2-2)
Atom at(plane1, city3-2)
end_variable
begin_variable
var6
-1
2
Atom at(truck1, city2-1)
Atom at(truck1, city2-2)
end_variable
begin_variable
var7
-1
2
Atom at(truck2, city1-1)
Atom at(truck2, city1-2)
end_variable
begin_variable
var8
-1
2
Atom at(truck3, city3-1)
Atom at(truck3, city3-2)
end_variable
begin_variable
var9
-1
2
Atom at(truck4, city1-1)
Atom at(truck4, city1-2)
end_variable
begin_variable
var10
-1
2
Atom at(truck5, city2-1)
Atom at(truck5, city2-2)
end_variable
begin_variable
var11
-1
2
Atom at(truck6, city3-1)
Atom at(truck6, city3-2)
end_variable
12
begin_mutex_group
13
0 0
0 1
0 2
0 3
0 4
0 5
0 6
0 7
0 8
0 9
0 10
0 11
0 12
end_mutex_group
begin_mutex_group
13
1 0
1 1
1 2
1 3
1 4
1 5
1 6
1 7
1 8
1 9
1 10
1 11
1 12
end_mutex_group
begin_mutex_group
13
2 0
2 1
2 2
2 3
2 4
2 5
2 6
2 7
2 8
2 9
2 10
2 11
2 12
end_mutex_group
begin_mutex_group
13
3 0
3 1
3 2
3 3
3 4
3 5
3 6
3 7
3 8
3 9
3 10
3 11
3 12
end_mutex_group
begin_mutex_group
13
4 0
4 1
4 2
4 3
4 4
4 5
4 6
4 7
4 8
4 9
4 10
4 11
4 12
end_mutex_group
begin_mutex_group
3
5 0
5 1
5 2
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
begin_state
2
3
0
1
2
2
1
1
1
0
0
0
end_state
begin_goal
3
2 2
3 2
4 5
end_goal
168
begin_operator
drive-truck truck1 city2-1 city2-2 city2
0
1
0 6 0 1
0
end_operator
begin_operator
drive-truck truck1 city2-2 city2-1 city2
0
1
0 6 1 0
0
end_operator
begin_operator
drive-truck truck2 city1-1 city1-2 city1
0
1
0 7 0 1
0
end_operator
begin_operator
drive-truck truck2 city1-2 city1-1 city1
0
1
0 7 1 0
0
end_operator
begin_operator
drive-truck truck3 city3-1 city3-2 city3
0
1
0 8 0 1
0
end_operator
begin_operator
drive-truck truck3 city3-2 city3-1 city3
0
1
0 8 1 0
0
end_operator
begin_operator
drive-truck truck4 city1-1 city1-2 city1
0
1
0 9 0 1
0
end_operator
begin_operator
drive-truck truck4 city1-2 city1-1 city1
0
1
0 9 1 0
0
end_operator
begin_operator
drive-truck truck5 city2-1 city2-2 city2
0
1
0 10 0 1
0
end_operator
begin_operator
drive-truck truck5 city2-2 city2-1 city2
0
1
0 10 1 0
0
end_operator
begin_operator
drive-truck truck6 city3-1 city3-2 city3
0
1
0 11 0 1
0
end_operator
begin_operator
drive-truck truck6 city3-2 city3-1 city3
0
1
0 11 1 0
0
end_operator
begin_operator
fly-airplane plane1 city1-2 city2-2
0
1
0 5 0 1
0
end_operator
begin_operator
fly-airplane plane1 city1-2 city3-2
0
1
0 5 0 2
0
end_operator
begin_operator
fly-airplane plane1 city2-2 city1-2
0
1
0 5 1 0
0
end_operator
begin_operator
fly-airplane plane1 city2-2 city3-2
0
1
0 5 1 2
0
end_operator
begin_operator
fly-airplane plane1 city3-2 city1-2
0
1
0 5 2 0
0
end_operator
begin_operator
fly-airplane plane1 city3-2 city2-2
0
1
0 5 2 1
0
end_operator
begin_operator
load-airplane package1 plane1 city1-2
1
5 0
1
0 0 1 6
0
end_operator
begin_operator
load-airplane package1 plane1 city2-2
1
5 1
1
0 0 3 6
0
end_operator
begin_operator
load-airplane package1 plane1 city3-2
1
5 2
1
0 0 5 6
0
end_operator
begin_operator
load-airplane package2 plane1 city1-2
1
5 0
1
0 1 1 6
0
end_operator
begin_operator
load-airplane package2 plane1 city2-2
1
5 1
1
0 1 3 6
0
end_operator
begin_operator
load-airplane package2 plane1 city3-2
1
5 2
1
0 1 5 6
0
end_operator
begin_operator
load-airplane package3 plane1 city1-2
1
5 0
1
0 2 1 6
0
end_operator
begin_operator
load-airplane package3 plane1 city2-2
1
5 1
1
0 2 3 6
0
end_operator
begin_operator
load-airplane package3 plane1 city3-2
1
5 2
1
0 2 5 6
0
end_operator
begin_operator
load-airplane package4 plane1 city1-2
1
5 0
1
0 3 1 6
0
end_operator
begin_operator
load-airplane package4 plane1 city2-2
1
5 1
1
0 3 3 6
0
end_operator
begin_operator
load-airplane package4 plane1 city3-2
1
5 2
1
0 3 5 6
0
end_operator
begin_operator
load-airplane package5 plane1 city1-2
1
5 0
1
0 4 1 6
0
end_operator
begin_operator
load-airplane package5 plane1 city2-2
1
5 1
1
0 4 3 6
0
end_operator
begin_operator
load-airplane package5 plane1 city3-2
1
5 2
1
0 4 5 6
0
end_operator
begin_operator
load-truck package1 truck1 city2-1
1
6 0
1
0 0 2 7
0
end_operator
begin_operator
load-truck package1 truck1 city2-2
1
6 1
1
0 0 3 7
0
end_operator
begin_operator
load-truck package1 truck2 city1-1
1
7 0
1
0 0 0 8
0
end_operator
begin_operator
load-truck package1 truck2 city1-2
1
7 1
1
0 0 1 8
0
end_operator
begin_operator
load-truck package1 truck3 city3-1
1
8 0
1
0 0 4 9
0
end_operator
begin_operator
load-truck package1 truck3 city3-2
1
8 1
1
0 0 5 9
0
end_operator
begin_operator
load-truck package1 truck4 city1-1
1
9 0
1
0 0 0 10
0
end_operator
begin_operator
load-truck package1 truck4 city1-2
1
9 1
1
0 0 1 10
0
end_operator
begin_operator
load-truck package1 truck5 city2-1
1
10 0
1
0 0 2 11
0
end_operator
begin_operator
load-truck package1 truck5 city2-2
1
10 1
1
0 0 3 11
0
end_operator
begin_operator
load-truck package1 truck6 city3-1
1
11 0
1
0 0 4 12
0
end_operator
begin_operator
load-truck package1 truck6 city3-2
1
11 1
1
0 0 5 12
0
end_operator
begin_operator
load-truck package2 truck1 city2-1
1
6 0
1
0 1 2 7
0
end_operator
begin_operator
load-truck package2 truck1 city2-2
1
6 1
1
0 1 3 7
0
end_operator
begin_operator
load-truck package2 truck2 city1-1
1
7 0
1
0 1 0 8
0
end_operator
begin_operator
load-truck package2 truck2 city1-2
1
7 1
1
0 1 1 8
0
end_operator
begin_operator
load-truck package2 truck3 city3-1
1
8 0
1
0 1 4 9
0
end_operator
begin_operator
load-truck package2 truck3 city3-2
1
8 1
1
0 1 5 9
0
end_operator
begin_operator
load-truck package2 truck4 city1-1
1
9 0
1
0 1 0 10
0
end_operator
begin_operator
load-truck package2 truck4 city1-2
1
9 1
1
0 1 1 10
0
end_operator
begin_operator
load-truck package2 truck5 city2-1
1
10 0
1
0 1 2 11
0
end_operator
begin_operator
load-truck package2 truck5 city2-2
1
10 1
1
0 1 3 11
0
end_operator
begin_operator
load-truck package2 truck6 city3-1
1
11 0
1
0 1 4 12
0
end_operator
begin_operator
load-truck package2 truck6 city3-2
1
11 1
1
0 1 5 12
0
end_operator
begin_operator
load-truck package3 truck1 city2-1
1
6 0
1
0 2 2 7
0
end_operator
begin_operator
load-truck package3 truck1 city2-2
1
6 1
1
0 2 3 7
0
end_operator
begin_operator
load-truck package3 truck2 city1-1
1
7 0
1
0 2 0 8
0
end_operator
begin_operator
load-truck package3 truck2 city1-2
1
7 1
1
0 2 1 8
0
end_operator
begin_operator
load-truck package3 truck3 city3-1
1
8 0
1
0 2 4 9
0
end_operator
begin_operator
load-truck package3 truck3 city3-2
1
8 1
1
0 2 5 9
0
end_operator
begin_operator
load-truck package3 truck4 city1-1
1
9 0
1
0 2 0 10
0
end_operator
begin_operator
load-truck package3 truck4 city1-2
1
9 1
1
0 2 1 10
0
end_operator
begin_operator
load-truck package3 truck5 city2-1
1
10 0
1
0 2 2 11
0
end_operator
begin_operator
load-truck package3 truck5 city2-2
1
10 1
1
0 2 3 11
0
end_operator
begin_operator
load-truck package3 truck6 city3-1
1
11 0
1
0 2 4 12
0
end_operator
begin_operator
load-truck package3 truck6 city3-2
1
11 1
1
0 2 5 12
0
end_operator
begin_operator
load-truck package4 truck1 city2-1
1
6 0
1
0 3 2 7
0
end_operator
begin_operator
load-truck package4 truck1 city2-2
1
6 1
1
0 3 3 7
0
end_operator
begin_operator
load-truck package4 truck2 city1-1
1
7 0
1
0 3 0 8
0
end_operator
begin_operator
load-truck package4 truck2 city1-2
1
7 1
1
0 3 1 8
0
end_operator
begin_operator
load-truck package4 truck3 city3-1
1
8 0
1
0 3 4 9
0
end_operator
begin_operator
load-truck package4 truck3 city3-2
1
8 1
1
0 3 5 9
0
end_operator
begin_operator
load-truck package4 truck4 city1-1
1
9 0
1
0 3 0 10
0
end_operator
begin_operator
load-truck package4 truck4 city1-2
1
9 1
1
0 3 1 10
0
end_operator
begin_operator
load-truck package4 truck5 city2-1
1
10 0
1
0 3 2 11
0
end_operator
begin_operator
load-truck package4 truck5 city2-2
1
10 1
1
0 3 3 11
0
end_operator
begin_operator
load-truck package4 truck6 city3-1
1
11 0
1
0 3 4 12
0
end_operator
begin_operator
load-truck package4 truck6 city3-2
1
11 1
1
0 3 5 12
0
end_operator
begin_operator
load-truck package5 truck1 city2-1
1
6 0
1
0 4 2 7
0
end_operator
begin_operator
load-truck package5 truck1 city2-2
1
6 1
1
0 4 3 7
0
end_operator
begin_operator
load-truck package5 truck2 city1-1
1
7 0
1
0 4 0 8
0
end_operator
begin_operator
load-truck package5 truck2 city1-2
1
7 1
1
0 4 1 8
0
end_operator
begin_operator
load-truck package5 truck3 city3-1
1
8 0
1
0 4 4 9
0
end_operator
begin_operator
load-truck package5 truck3 city3-2
1
8 1
1
0 4 5 9
0
end_operator
begin_operator
load-truck package5 truck4 city1-1
1
9 0
1
0 4 0 10
0
end_operator
begin_operator
load-truck package5 truck4 city1-2
1
9 1
1
0 4 1 10
0
end_operator
begin_operator
load-truck package5 truck5 city2-1
1
10 0
1
0 4 2 11
0
end_operator
begin_operator
load-truck package5 truck5 city2-2
1
10 1
1
0 4 3 11
0
end_operator
begin_operator
load-truck package5 truck6 city3-1
1
11 0
1
0 4 4 12
0
end_operator
begin_operator
load-truck package5 truck6 city3-2
1
11 1
1
0 4 5 12
0
end_operator
begin_operator
unload-airplane package1 plane1 city1-2
1
5 0
1
0 0 6 1
0
end_operator
begin_operator
unload-airplane package1 plane1 city2-2
1
5 1
1
0 0 6 3
0
end_operator
begin_operator
unload-airplane package1 plane1 city3-2
1
5 2
1
0 0 6 5
0
end_operator
begin_operator
unload-airplane package2 plane1 city1-2
1
5 0
1
0 1 6 1
0
end_operator
begin_operator
unload-airplane package2 plane1 city2-2
1
5 1
1
0 1 6 3
0
end_operator
begin_operator
unload-airplane package2 plane1 city3-2
1
5 2
1
0 1 6 5
0
end_operator
begin_operator
unload-airplane package3 plane1 city1-2
1
5 0
1
0 2 6 1
0
end_operator
begin_operator
unload-airplane package3 plane1 city2-2
1
5 1
1
0 2 6 3
0
end_operator
begin_operator
unload-airplane package3 plane1 city3-2
1
5 2
1
0 2 6 5
0
end_operator
begin_operator
unload-airplane package4 plane1 city1-2
1
5 0
1
0 3 6 1
0
end_operator
begin_operator
unload-airplane package4 plane1 city2-2
1
5 1
1
0 3 6 3
0
end_operator
begin_operator
unload-airplane package4 plane1 city3-2
1
5 2
1
0 3 6 5
0
end_operator
begin_operator
unload-airplane package5 plane1 city1-2
1
5 0
1
0 4 6 1
0
end_operator
begin_operator
unload-airplane package5 plane1 city2-2
1
5 1
1
0 4 6 3
0
end_operator
begin_operator
unload-airplane package5 plane1 city3-2
1
5 2
1
0 4 6 5
0
end_operator
begin_operator
unload-truck package1 truck1 city2-1
1
6 0
1
0 0 7 2
0
end_operator
begin_operator
unload-truck package1 truck1 city2-2
1
6 1
1
0 0 7 3
0
end_operator
begin_operator
unload-truck package1 truck2 city1-1
1
7 0
1
0 0 8 0
0
end_operator
begin_operator
unload-truck package1 truck2 city1-2
1
7 1
1
0 0 8 1
0
end_operator
begin_operator
unload-truck package1 truck3 city3-1
1
8 0
1
0 0 9 4
0
end_operator
begin_operator
unload-truck package1 truck3 city3-2
1
8 1
1
0 0 9 5
0
end_operator
begin_operator
unload-truck package1 truck4 city1-1
1
9 0
1
0 0 10 0
0
end_operator
begin_operator
unload-truck package1 truck4 city1-2
1
9 1
1
0 0 10 1
0
end_operator
begin_operator
unload-truck package1 truck5 city2-1
1
10 0
1
0 0 11 2
0
end_operator
begin_operator
unload-truck package1 truck5 city2-2
1
10 1
1
0 0 11 3
0
end_operator
begin_operator
unload-truck package1 truck6 city3-1
1
11 0
1
0 0 12 4
0
end_operator
begin_operator
unload-truck package1 truck6 city3-2
1
11 1
1
0 0 12 5
0
end_operator
begin_operator
unload-truck package2 truck1 city2-1
1
6 0
1
0 1 7 2
0
end_operator
begin_operator
unload-truck package2 truck1 city2-2
1
6 1
1
0 1 7 3
0
end_operator
begin_operator
unload-truck package2 truck2 city1-1
1
7 0
1
0 1 8 0
0
end_operator
begin_operator
unload-truck package2 truck2 city1-2
1
7 1
1
0 1 8 1
0
end_operator
begin_operator
unload-truck package2 truck3 city3-1
1
8 0
1
0 1 9 4
0
end_operator
begin_operator
unload-truck package2 truck3 city3-2
1
8 1
1
0 1 9 5
0
end_operator
begin_operator
unload-truck package2 truck4 city1-1
1
9 0
1
0 1 10 0
0
end_operator
begin_operator
unload-truck package2 truck4 city1-2
1
9 1
1
0 1 10 1
0
end_operator
begin_operator
unload-truck package2 truck5 city2-1
1
10 0
1
0 1 11 2
0
end_operator
begin_operator
unload-truck package2 truck5 city2-2
1
10 1
1
0 1 11 3
0
end_operator
begin_operator
unload-truck package2 truck6 city3-1
1
11 0
1
0 1 12 4
0
end_operator
begin_operator
unload-truck package2 truck6 city3-2
1
11 1
1
0 1 12 5
0
end_operator
begin_operator
unload-truck package3 truck1 city2-1
1
6 0
1
0 2 7 2
0
end_operator
begin_operator
unload-truck package3 truck1 city2-2
1
6 1
1
0 2 7 3
0
end_operator
begin_operator
unload-truck package3 truck2 city1-1
1
7 0
1
0 2 8 0
0
end_operator
begin_operator
unload-truck package3 truck2 city1-2
1
7 1
1
0 2 8 1
0
end_operator
begin_operator
unload-truck package3 truck3 city3-1
1
8 0
1
0 2 9 4
0
end_operator
begin_operator
unload-truck package3 truck3 city3-2
1
8 1
1
0 2 9 5
0
end_operator
begin_operator
unload-truck package3 truck4 city1-1
1
9 0
1
0 2 10 0
0
end_operator
begin_operator
unload-truck package3 truck4 city1-2
1
9 1
1
0 2 10 1
0
end_operator
begin_operator
unload-truck package3 truck5 city2-1
1
10 0
1
0 2 11 2
0
end_operator
begin_operator
unload-truck package3 truck5 city2-2
1
10 1
1
0 2 11 3
0
end_operator
begin_operator
unload-truck package3 truck6 city3-1
1
11 0
1
0 2 12 4
0
end_operator
begin_operator
unload-truck package3 truck6 city3-2
1
11 1
1
0 2 12 5
0
end_operator
begin_operator
unload-truck package4 truck1 city2-1
1
6 0
1
0 3 7 2
0
end_operator
begin_operator
unload-truck package4 truck1 city2-2
1
6 1
1
0 3 7 3
0
end_operator
begin_operator
unload-truck package4 truck2 city1-1
1
7 0
1
0 3 8 0
0
end_operator
begin_operator
unload-truck package4 truck2 city1-2
1
7 1
1
0 3 8 1
0
end_operator
begin_operator
unload-truck package4 truck3 city3-1
1
8 0
1
0 3 9 4
0
end_operator
begin_operator
unload-truck package4 truck3 city3-2
1
8 1
1
0 3 9 5
0
end_operator
begin_operator
unload-truck package4 truck4 city1-1
1
9 0
1
0 3 10 0
0
end_operator
begin_operator
unload-truck package4 truck4 city1-2
1
9 1
1
0 3 10 1
0
end_operator
begin_operator
unload-truck package4 truck5 city2-1
1
10 0
1
0 3 11 2
0
end_operator
begin_operator
unload-truck package4 truck5 city2-2
1
10 1
1
0 3 11 3
0
end_operator
begin_operator
unload-truck package4 truck6 city3-1
1
11 0
1
0 3 12 4
0
end_operator
begin_operator
unload-truck package4 truck6 city3-2
1
11 1
1
0 3 12 5
0
end_operator
begin_operator
unload-truck package5 truck1 city2-1
1
6 0
1
0 4 7 2
0
end_operator
begin_operator
unload-truck package5 truck1 city2-2
1
6 1
1
0 4 7 3
0
end_operator
begin_operator
unload-truck package5 truck2 city1-1
1
7 0
1
0 4 8 0
0
end_operator
begin_operator
unload-truck package5 truck2 city1-2
1
7 1
1
0 4 8 1
0
end_operator
begin_operator
unload-truck package5 truck3 city3-1
1
8 0
1
0 4 9 4
0
end_operator
begin_operator
unload-truck package5 truck3 city3-2
1
8 1
1
0 4 9 5
0
end_operator
begin_operator
unload-truck package5 truck4 city1-1
1
9 0
1
0 4 10 0
0
end_operator
begin_operator
unload-truck package5 truck4 city1-2
1
9 1
1
0 4 10 1
0
end_operator
begin_operator
unload-truck package5 truck5 city2-1
1
10 0
1
0 4 11 2
0
end_operator
begin_operator
unload-truck package5 truck5 city2-2
1
10 1
1
0 4 11 3
0
end_operator
begin_operator
unload-truck package5 truck6 city3-1
1
11 0
1
0 4 12 4
0
end_operator
begin_operator
unload-truck package5 truck6 city3-2
1
11 1
1
0 4 12 5
0
end_operator
0
