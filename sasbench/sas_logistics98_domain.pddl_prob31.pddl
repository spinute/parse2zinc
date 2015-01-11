begin_version
3
end_version
begin_metric
0
end_metric
10
begin_variable
var0
-1
17
Atom at(package1, city1-1)
Atom at(package1, city1-2)
Atom at(package1, city2-1)
Atom at(package1, city2-2)
Atom at(package1, city3-1)
Atom at(package1, city3-2)
Atom at(package1, city4-1)
Atom at(package1, city4-2)
Atom at(package1, city5-1)
Atom at(package1, city5-2)
Atom in(package1, plane1)
Atom in(package1, plane2)
Atom in(package1, truck1)
Atom in(package1, truck2)
Atom in(package1, truck3)
Atom in(package1, truck4)
Atom in(package1, truck5)
end_variable
begin_variable
var1
-1
17
Atom at(package2, city1-1)
Atom at(package2, city1-2)
Atom at(package2, city2-1)
Atom at(package2, city2-2)
Atom at(package2, city3-1)
Atom at(package2, city3-2)
Atom at(package2, city4-1)
Atom at(package2, city4-2)
Atom at(package2, city5-1)
Atom at(package2, city5-2)
Atom in(package2, plane1)
Atom in(package2, plane2)
Atom in(package2, truck1)
Atom in(package2, truck2)
Atom in(package2, truck3)
Atom in(package2, truck4)
Atom in(package2, truck5)
end_variable
begin_variable
var2
-1
17
Atom at(package3, city1-1)
Atom at(package3, city1-2)
Atom at(package3, city2-1)
Atom at(package3, city2-2)
Atom at(package3, city3-1)
Atom at(package3, city3-2)
Atom at(package3, city4-1)
Atom at(package3, city4-2)
Atom at(package3, city5-1)
Atom at(package3, city5-2)
Atom in(package3, plane1)
Atom in(package3, plane2)
Atom in(package3, truck1)
Atom in(package3, truck2)
Atom in(package3, truck3)
Atom in(package3, truck4)
Atom in(package3, truck5)
end_variable
begin_variable
var3
-1
5
Atom at(plane1, city1-2)
Atom at(plane1, city2-2)
Atom at(plane1, city3-2)
Atom at(plane1, city4-2)
Atom at(plane1, city5-2)
end_variable
begin_variable
var4
-1
5
Atom at(plane2, city1-2)
Atom at(plane2, city2-2)
Atom at(plane2, city3-2)
Atom at(plane2, city4-2)
Atom at(plane2, city5-2)
end_variable
begin_variable
var5
-1
2
Atom at(truck1, city1-1)
Atom at(truck1, city1-2)
end_variable
begin_variable
var6
-1
2
Atom at(truck2, city2-1)
Atom at(truck2, city2-2)
end_variable
begin_variable
var7
-1
2
Atom at(truck3, city3-1)
Atom at(truck3, city3-2)
end_variable
begin_variable
var8
-1
2
Atom at(truck4, city4-1)
Atom at(truck4, city4-2)
end_variable
begin_variable
var9
-1
2
Atom at(truck5, city5-1)
Atom at(truck5, city5-2)
end_variable
10
begin_mutex_group
17
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
0 13
0 14
0 15
0 16
end_mutex_group
begin_mutex_group
17
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
1 13
1 14
1 15
1 16
end_mutex_group
begin_mutex_group
17
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
2 13
2 14
2 15
2 16
end_mutex_group
begin_mutex_group
5
3 0
3 1
3 2
3 3
3 4
end_mutex_group
begin_mutex_group
5
4 0
4 1
4 2
4 3
4 4
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
begin_state
6
1
0
1
0
0
0
0
0
0
end_state
begin_goal
3
0 5
1 0
2 1
end_goal
170
begin_operator
drive-truck truck1 city1-1 city1-2 city1
0
1
0 5 0 1
0
end_operator
begin_operator
drive-truck truck1 city1-2 city1-1 city1
0
1
0 5 1 0
0
end_operator
begin_operator
drive-truck truck2 city2-1 city2-2 city2
0
1
0 6 0 1
0
end_operator
begin_operator
drive-truck truck2 city2-2 city2-1 city2
0
1
0 6 1 0
0
end_operator
begin_operator
drive-truck truck3 city3-1 city3-2 city3
0
1
0 7 0 1
0
end_operator
begin_operator
drive-truck truck3 city3-2 city3-1 city3
0
1
0 7 1 0
0
end_operator
begin_operator
drive-truck truck4 city4-1 city4-2 city4
0
1
0 8 0 1
0
end_operator
begin_operator
drive-truck truck4 city4-2 city4-1 city4
0
1
0 8 1 0
0
end_operator
begin_operator
drive-truck truck5 city5-1 city5-2 city5
0
1
0 9 0 1
0
end_operator
begin_operator
drive-truck truck5 city5-2 city5-1 city5
0
1
0 9 1 0
0
end_operator
begin_operator
fly-airplane plane1 city1-2 city2-2
0
1
0 3 0 1
0
end_operator
begin_operator
fly-airplane plane1 city1-2 city3-2
0
1
0 3 0 2
0
end_operator
begin_operator
fly-airplane plane1 city1-2 city4-2
0
1
0 3 0 3
0
end_operator
begin_operator
fly-airplane plane1 city1-2 city5-2
0
1
0 3 0 4
0
end_operator
begin_operator
fly-airplane plane1 city2-2 city1-2
0
1
0 3 1 0
0
end_operator
begin_operator
fly-airplane plane1 city2-2 city3-2
0
1
0 3 1 2
0
end_operator
begin_operator
fly-airplane plane1 city2-2 city4-2
0
1
0 3 1 3
0
end_operator
begin_operator
fly-airplane plane1 city2-2 city5-2
0
1
0 3 1 4
0
end_operator
begin_operator
fly-airplane plane1 city3-2 city1-2
0
1
0 3 2 0
0
end_operator
begin_operator
fly-airplane plane1 city3-2 city2-2
0
1
0 3 2 1
0
end_operator
begin_operator
fly-airplane plane1 city3-2 city4-2
0
1
0 3 2 3
0
end_operator
begin_operator
fly-airplane plane1 city3-2 city5-2
0
1
0 3 2 4
0
end_operator
begin_operator
fly-airplane plane1 city4-2 city1-2
0
1
0 3 3 0
0
end_operator
begin_operator
fly-airplane plane1 city4-2 city2-2
0
1
0 3 3 1
0
end_operator
begin_operator
fly-airplane plane1 city4-2 city3-2
0
1
0 3 3 2
0
end_operator
begin_operator
fly-airplane plane1 city4-2 city5-2
0
1
0 3 3 4
0
end_operator
begin_operator
fly-airplane plane1 city5-2 city1-2
0
1
0 3 4 0
0
end_operator
begin_operator
fly-airplane plane1 city5-2 city2-2
0
1
0 3 4 1
0
end_operator
begin_operator
fly-airplane plane1 city5-2 city3-2
0
1
0 3 4 2
0
end_operator
begin_operator
fly-airplane plane1 city5-2 city4-2
0
1
0 3 4 3
0
end_operator
begin_operator
fly-airplane plane2 city1-2 city2-2
0
1
0 4 0 1
0
end_operator
begin_operator
fly-airplane plane2 city1-2 city3-2
0
1
0 4 0 2
0
end_operator
begin_operator
fly-airplane plane2 city1-2 city4-2
0
1
0 4 0 3
0
end_operator
begin_operator
fly-airplane plane2 city1-2 city5-2
0
1
0 4 0 4
0
end_operator
begin_operator
fly-airplane plane2 city2-2 city1-2
0
1
0 4 1 0
0
end_operator
begin_operator
fly-airplane plane2 city2-2 city3-2
0
1
0 4 1 2
0
end_operator
begin_operator
fly-airplane plane2 city2-2 city4-2
0
1
0 4 1 3
0
end_operator
begin_operator
fly-airplane plane2 city2-2 city5-2
0
1
0 4 1 4
0
end_operator
begin_operator
fly-airplane plane2 city3-2 city1-2
0
1
0 4 2 0
0
end_operator
begin_operator
fly-airplane plane2 city3-2 city2-2
0
1
0 4 2 1
0
end_operator
begin_operator
fly-airplane plane2 city3-2 city4-2
0
1
0 4 2 3
0
end_operator
begin_operator
fly-airplane plane2 city3-2 city5-2
0
1
0 4 2 4
0
end_operator
begin_operator
fly-airplane plane2 city4-2 city1-2
0
1
0 4 3 0
0
end_operator
begin_operator
fly-airplane plane2 city4-2 city2-2
0
1
0 4 3 1
0
end_operator
begin_operator
fly-airplane plane2 city4-2 city3-2
0
1
0 4 3 2
0
end_operator
begin_operator
fly-airplane plane2 city4-2 city5-2
0
1
0 4 3 4
0
end_operator
begin_operator
fly-airplane plane2 city5-2 city1-2
0
1
0 4 4 0
0
end_operator
begin_operator
fly-airplane plane2 city5-2 city2-2
0
1
0 4 4 1
0
end_operator
begin_operator
fly-airplane plane2 city5-2 city3-2
0
1
0 4 4 2
0
end_operator
begin_operator
fly-airplane plane2 city5-2 city4-2
0
1
0 4 4 3
0
end_operator
begin_operator
load-airplane package1 plane1 city1-2
1
3 0
1
0 0 1 10
0
end_operator
begin_operator
load-airplane package1 plane1 city2-2
1
3 1
1
0 0 3 10
0
end_operator
begin_operator
load-airplane package1 plane1 city3-2
1
3 2
1
0 0 5 10
0
end_operator
begin_operator
load-airplane package1 plane1 city4-2
1
3 3
1
0 0 7 10
0
end_operator
begin_operator
load-airplane package1 plane1 city5-2
1
3 4
1
0 0 9 10
0
end_operator
begin_operator
load-airplane package1 plane2 city1-2
1
4 0
1
0 0 1 11
0
end_operator
begin_operator
load-airplane package1 plane2 city2-2
1
4 1
1
0 0 3 11
0
end_operator
begin_operator
load-airplane package1 plane2 city3-2
1
4 2
1
0 0 5 11
0
end_operator
begin_operator
load-airplane package1 plane2 city4-2
1
4 3
1
0 0 7 11
0
end_operator
begin_operator
load-airplane package1 plane2 city5-2
1
4 4
1
0 0 9 11
0
end_operator
begin_operator
load-airplane package2 plane1 city1-2
1
3 0
1
0 1 1 10
0
end_operator
begin_operator
load-airplane package2 plane1 city2-2
1
3 1
1
0 1 3 10
0
end_operator
begin_operator
load-airplane package2 plane1 city3-2
1
3 2
1
0 1 5 10
0
end_operator
begin_operator
load-airplane package2 plane1 city4-2
1
3 3
1
0 1 7 10
0
end_operator
begin_operator
load-airplane package2 plane1 city5-2
1
3 4
1
0 1 9 10
0
end_operator
begin_operator
load-airplane package2 plane2 city1-2
1
4 0
1
0 1 1 11
0
end_operator
begin_operator
load-airplane package2 plane2 city2-2
1
4 1
1
0 1 3 11
0
end_operator
begin_operator
load-airplane package2 plane2 city3-2
1
4 2
1
0 1 5 11
0
end_operator
begin_operator
load-airplane package2 plane2 city4-2
1
4 3
1
0 1 7 11
0
end_operator
begin_operator
load-airplane package2 plane2 city5-2
1
4 4
1
0 1 9 11
0
end_operator
begin_operator
load-airplane package3 plane1 city1-2
1
3 0
1
0 2 1 10
0
end_operator
begin_operator
load-airplane package3 plane1 city2-2
1
3 1
1
0 2 3 10
0
end_operator
begin_operator
load-airplane package3 plane1 city3-2
1
3 2
1
0 2 5 10
0
end_operator
begin_operator
load-airplane package3 plane1 city4-2
1
3 3
1
0 2 7 10
0
end_operator
begin_operator
load-airplane package3 plane1 city5-2
1
3 4
1
0 2 9 10
0
end_operator
begin_operator
load-airplane package3 plane2 city1-2
1
4 0
1
0 2 1 11
0
end_operator
begin_operator
load-airplane package3 plane2 city2-2
1
4 1
1
0 2 3 11
0
end_operator
begin_operator
load-airplane package3 plane2 city3-2
1
4 2
1
0 2 5 11
0
end_operator
begin_operator
load-airplane package3 plane2 city4-2
1
4 3
1
0 2 7 11
0
end_operator
begin_operator
load-airplane package3 plane2 city5-2
1
4 4
1
0 2 9 11
0
end_operator
begin_operator
load-truck package1 truck1 city1-1
1
5 0
1
0 0 0 12
0
end_operator
begin_operator
load-truck package1 truck1 city1-2
1
5 1
1
0 0 1 12
0
end_operator
begin_operator
load-truck package1 truck2 city2-1
1
6 0
1
0 0 2 13
0
end_operator
begin_operator
load-truck package1 truck2 city2-2
1
6 1
1
0 0 3 13
0
end_operator
begin_operator
load-truck package1 truck3 city3-1
1
7 0
1
0 0 4 14
0
end_operator
begin_operator
load-truck package1 truck3 city3-2
1
7 1
1
0 0 5 14
0
end_operator
begin_operator
load-truck package1 truck4 city4-1
1
8 0
1
0 0 6 15
0
end_operator
begin_operator
load-truck package1 truck4 city4-2
1
8 1
1
0 0 7 15
0
end_operator
begin_operator
load-truck package1 truck5 city5-1
1
9 0
1
0 0 8 16
0
end_operator
begin_operator
load-truck package1 truck5 city5-2
1
9 1
1
0 0 9 16
0
end_operator
begin_operator
load-truck package2 truck1 city1-1
1
5 0
1
0 1 0 12
0
end_operator
begin_operator
load-truck package2 truck1 city1-2
1
5 1
1
0 1 1 12
0
end_operator
begin_operator
load-truck package2 truck2 city2-1
1
6 0
1
0 1 2 13
0
end_operator
begin_operator
load-truck package2 truck2 city2-2
1
6 1
1
0 1 3 13
0
end_operator
begin_operator
load-truck package2 truck3 city3-1
1
7 0
1
0 1 4 14
0
end_operator
begin_operator
load-truck package2 truck3 city3-2
1
7 1
1
0 1 5 14
0
end_operator
begin_operator
load-truck package2 truck4 city4-1
1
8 0
1
0 1 6 15
0
end_operator
begin_operator
load-truck package2 truck4 city4-2
1
8 1
1
0 1 7 15
0
end_operator
begin_operator
load-truck package2 truck5 city5-1
1
9 0
1
0 1 8 16
0
end_operator
begin_operator
load-truck package2 truck5 city5-2
1
9 1
1
0 1 9 16
0
end_operator
begin_operator
load-truck package3 truck1 city1-1
1
5 0
1
0 2 0 12
0
end_operator
begin_operator
load-truck package3 truck1 city1-2
1
5 1
1
0 2 1 12
0
end_operator
begin_operator
load-truck package3 truck2 city2-1
1
6 0
1
0 2 2 13
0
end_operator
begin_operator
load-truck package3 truck2 city2-2
1
6 1
1
0 2 3 13
0
end_operator
begin_operator
load-truck package3 truck3 city3-1
1
7 0
1
0 2 4 14
0
end_operator
begin_operator
load-truck package3 truck3 city3-2
1
7 1
1
0 2 5 14
0
end_operator
begin_operator
load-truck package3 truck4 city4-1
1
8 0
1
0 2 6 15
0
end_operator
begin_operator
load-truck package3 truck4 city4-2
1
8 1
1
0 2 7 15
0
end_operator
begin_operator
load-truck package3 truck5 city5-1
1
9 0
1
0 2 8 16
0
end_operator
begin_operator
load-truck package3 truck5 city5-2
1
9 1
1
0 2 9 16
0
end_operator
begin_operator
unload-airplane package1 plane1 city1-2
1
3 0
1
0 0 10 1
0
end_operator
begin_operator
unload-airplane package1 plane1 city2-2
1
3 1
1
0 0 10 3
0
end_operator
begin_operator
unload-airplane package1 plane1 city3-2
1
3 2
1
0 0 10 5
0
end_operator
begin_operator
unload-airplane package1 plane1 city4-2
1
3 3
1
0 0 10 7
0
end_operator
begin_operator
unload-airplane package1 plane1 city5-2
1
3 4
1
0 0 10 9
0
end_operator
begin_operator
unload-airplane package1 plane2 city1-2
1
4 0
1
0 0 11 1
0
end_operator
begin_operator
unload-airplane package1 plane2 city2-2
1
4 1
1
0 0 11 3
0
end_operator
begin_operator
unload-airplane package1 plane2 city3-2
1
4 2
1
0 0 11 5
0
end_operator
begin_operator
unload-airplane package1 plane2 city4-2
1
4 3
1
0 0 11 7
0
end_operator
begin_operator
unload-airplane package1 plane2 city5-2
1
4 4
1
0 0 11 9
0
end_operator
begin_operator
unload-airplane package2 plane1 city1-2
1
3 0
1
0 1 10 1
0
end_operator
begin_operator
unload-airplane package2 plane1 city2-2
1
3 1
1
0 1 10 3
0
end_operator
begin_operator
unload-airplane package2 plane1 city3-2
1
3 2
1
0 1 10 5
0
end_operator
begin_operator
unload-airplane package2 plane1 city4-2
1
3 3
1
0 1 10 7
0
end_operator
begin_operator
unload-airplane package2 plane1 city5-2
1
3 4
1
0 1 10 9
0
end_operator
begin_operator
unload-airplane package2 plane2 city1-2
1
4 0
1
0 1 11 1
0
end_operator
begin_operator
unload-airplane package2 plane2 city2-2
1
4 1
1
0 1 11 3
0
end_operator
begin_operator
unload-airplane package2 plane2 city3-2
1
4 2
1
0 1 11 5
0
end_operator
begin_operator
unload-airplane package2 plane2 city4-2
1
4 3
1
0 1 11 7
0
end_operator
begin_operator
unload-airplane package2 plane2 city5-2
1
4 4
1
0 1 11 9
0
end_operator
begin_operator
unload-airplane package3 plane1 city1-2
1
3 0
1
0 2 10 1
0
end_operator
begin_operator
unload-airplane package3 plane1 city2-2
1
3 1
1
0 2 10 3
0
end_operator
begin_operator
unload-airplane package3 plane1 city3-2
1
3 2
1
0 2 10 5
0
end_operator
begin_operator
unload-airplane package3 plane1 city4-2
1
3 3
1
0 2 10 7
0
end_operator
begin_operator
unload-airplane package3 plane1 city5-2
1
3 4
1
0 2 10 9
0
end_operator
begin_operator
unload-airplane package3 plane2 city1-2
1
4 0
1
0 2 11 1
0
end_operator
begin_operator
unload-airplane package3 plane2 city2-2
1
4 1
1
0 2 11 3
0
end_operator
begin_operator
unload-airplane package3 plane2 city3-2
1
4 2
1
0 2 11 5
0
end_operator
begin_operator
unload-airplane package3 plane2 city4-2
1
4 3
1
0 2 11 7
0
end_operator
begin_operator
unload-airplane package3 plane2 city5-2
1
4 4
1
0 2 11 9
0
end_operator
begin_operator
unload-truck package1 truck1 city1-1
1
5 0
1
0 0 12 0
0
end_operator
begin_operator
unload-truck package1 truck1 city1-2
1
5 1
1
0 0 12 1
0
end_operator
begin_operator
unload-truck package1 truck2 city2-1
1
6 0
1
0 0 13 2
0
end_operator
begin_operator
unload-truck package1 truck2 city2-2
1
6 1
1
0 0 13 3
0
end_operator
begin_operator
unload-truck package1 truck3 city3-1
1
7 0
1
0 0 14 4
0
end_operator
begin_operator
unload-truck package1 truck3 city3-2
1
7 1
1
0 0 14 5
0
end_operator
begin_operator
unload-truck package1 truck4 city4-1
1
8 0
1
0 0 15 6
0
end_operator
begin_operator
unload-truck package1 truck4 city4-2
1
8 1
1
0 0 15 7
0
end_operator
begin_operator
unload-truck package1 truck5 city5-1
1
9 0
1
0 0 16 8
0
end_operator
begin_operator
unload-truck package1 truck5 city5-2
1
9 1
1
0 0 16 9
0
end_operator
begin_operator
unload-truck package2 truck1 city1-1
1
5 0
1
0 1 12 0
0
end_operator
begin_operator
unload-truck package2 truck1 city1-2
1
5 1
1
0 1 12 1
0
end_operator
begin_operator
unload-truck package2 truck2 city2-1
1
6 0
1
0 1 13 2
0
end_operator
begin_operator
unload-truck package2 truck2 city2-2
1
6 1
1
0 1 13 3
0
end_operator
begin_operator
unload-truck package2 truck3 city3-1
1
7 0
1
0 1 14 4
0
end_operator
begin_operator
unload-truck package2 truck3 city3-2
1
7 1
1
0 1 14 5
0
end_operator
begin_operator
unload-truck package2 truck4 city4-1
1
8 0
1
0 1 15 6
0
end_operator
begin_operator
unload-truck package2 truck4 city4-2
1
8 1
1
0 1 15 7
0
end_operator
begin_operator
unload-truck package2 truck5 city5-1
1
9 0
1
0 1 16 8
0
end_operator
begin_operator
unload-truck package2 truck5 city5-2
1
9 1
1
0 1 16 9
0
end_operator
begin_operator
unload-truck package3 truck1 city1-1
1
5 0
1
0 2 12 0
0
end_operator
begin_operator
unload-truck package3 truck1 city1-2
1
5 1
1
0 2 12 1
0
end_operator
begin_operator
unload-truck package3 truck2 city2-1
1
6 0
1
0 2 13 2
0
end_operator
begin_operator
unload-truck package3 truck2 city2-2
1
6 1
1
0 2 13 3
0
end_operator
begin_operator
unload-truck package3 truck3 city3-1
1
7 0
1
0 2 14 4
0
end_operator
begin_operator
unload-truck package3 truck3 city3-2
1
7 1
1
0 2 14 5
0
end_operator
begin_operator
unload-truck package3 truck4 city4-1
1
8 0
1
0 2 15 6
0
end_operator
begin_operator
unload-truck package3 truck4 city4-2
1
8 1
1
0 2 15 7
0
end_operator
begin_operator
unload-truck package3 truck5 city5-1
1
9 0
1
0 2 16 8
0
end_operator
begin_operator
unload-truck package3 truck5 city5-2
1
9 1
1
0 2 16 9
0
end_operator
0
