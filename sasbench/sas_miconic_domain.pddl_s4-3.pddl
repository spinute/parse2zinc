begin_version
3
end_version
begin_metric
0
end_metric
9
begin_variable
var0
-1
2
Atom boarded(p0)
NegatedAtom boarded(p0)
end_variable
begin_variable
var1
-1
2
Atom boarded(p1)
NegatedAtom boarded(p1)
end_variable
begin_variable
var2
-1
2
Atom boarded(p2)
NegatedAtom boarded(p2)
end_variable
begin_variable
var3
-1
2
Atom boarded(p3)
NegatedAtom boarded(p3)
end_variable
begin_variable
var4
-1
8
Atom lift-at(f0)
Atom lift-at(f1)
Atom lift-at(f2)
Atom lift-at(f3)
Atom lift-at(f4)
Atom lift-at(f5)
Atom lift-at(f6)
Atom lift-at(f7)
end_variable
begin_variable
var5
-1
2
Atom served(p0)
NegatedAtom served(p0)
end_variable
begin_variable
var6
-1
2
Atom served(p1)
NegatedAtom served(p1)
end_variable
begin_variable
var7
-1
2
Atom served(p2)
NegatedAtom served(p2)
end_variable
begin_variable
var8
-1
2
Atom served(p3)
NegatedAtom served(p3)
end_variable
1
begin_mutex_group
8
4 0
4 1
4 2
4 3
4 4
4 5
4 6
4 7
end_mutex_group
begin_state
1
1
1
1
0
1
1
1
1
end_state
begin_goal
4
5 0
6 0
7 0
8 0
end_goal
64
begin_operator
board f1 p0
1
4 1
1
0 0 -1 0
0
end_operator
begin_operator
board f3 p2
1
4 3
1
0 2 -1 0
0
end_operator
begin_operator
board f5 p3
1
4 5
1
0 3 -1 0
0
end_operator
begin_operator
board f6 p1
1
4 6
1
0 1 -1 0
0
end_operator
begin_operator
depart f0 p3
1
4 0
2
0 3 0 1
0 8 -1 0
0
end_operator
begin_operator
depart f3 p1
1
4 3
2
0 1 0 1
0 6 -1 0
0
end_operator
begin_operator
depart f4 p2
1
4 4
2
0 2 0 1
0 7 -1 0
0
end_operator
begin_operator
depart f7 p0
1
4 7
2
0 0 0 1
0 5 -1 0
0
end_operator
begin_operator
down f1 f0
0
1
0 4 1 0
0
end_operator
begin_operator
down f2 f0
0
1
0 4 2 0
0
end_operator
begin_operator
down f2 f1
0
1
0 4 2 1
0
end_operator
begin_operator
down f3 f0
0
1
0 4 3 0
0
end_operator
begin_operator
down f3 f1
0
1
0 4 3 1
0
end_operator
begin_operator
down f3 f2
0
1
0 4 3 2
0
end_operator
begin_operator
down f4 f0
0
1
0 4 4 0
0
end_operator
begin_operator
down f4 f1
0
1
0 4 4 1
0
end_operator
begin_operator
down f4 f2
0
1
0 4 4 2
0
end_operator
begin_operator
down f4 f3
0
1
0 4 4 3
0
end_operator
begin_operator
down f5 f0
0
1
0 4 5 0
0
end_operator
begin_operator
down f5 f1
0
1
0 4 5 1
0
end_operator
begin_operator
down f5 f2
0
1
0 4 5 2
0
end_operator
begin_operator
down f5 f3
0
1
0 4 5 3
0
end_operator
begin_operator
down f5 f4
0
1
0 4 5 4
0
end_operator
begin_operator
down f6 f0
0
1
0 4 6 0
0
end_operator
begin_operator
down f6 f1
0
1
0 4 6 1
0
end_operator
begin_operator
down f6 f2
0
1
0 4 6 2
0
end_operator
begin_operator
down f6 f3
0
1
0 4 6 3
0
end_operator
begin_operator
down f6 f4
0
1
0 4 6 4
0
end_operator
begin_operator
down f6 f5
0
1
0 4 6 5
0
end_operator
begin_operator
down f7 f0
0
1
0 4 7 0
0
end_operator
begin_operator
down f7 f1
0
1
0 4 7 1
0
end_operator
begin_operator
down f7 f2
0
1
0 4 7 2
0
end_operator
begin_operator
down f7 f3
0
1
0 4 7 3
0
end_operator
begin_operator
down f7 f4
0
1
0 4 7 4
0
end_operator
begin_operator
down f7 f5
0
1
0 4 7 5
0
end_operator
begin_operator
down f7 f6
0
1
0 4 7 6
0
end_operator
begin_operator
up f0 f1
0
1
0 4 0 1
0
end_operator
begin_operator
up f0 f2
0
1
0 4 0 2
0
end_operator
begin_operator
up f0 f3
0
1
0 4 0 3
0
end_operator
begin_operator
up f0 f4
0
1
0 4 0 4
0
end_operator
begin_operator
up f0 f5
0
1
0 4 0 5
0
end_operator
begin_operator
up f0 f6
0
1
0 4 0 6
0
end_operator
begin_operator
up f0 f7
0
1
0 4 0 7
0
end_operator
begin_operator
up f1 f2
0
1
0 4 1 2
0
end_operator
begin_operator
up f1 f3
0
1
0 4 1 3
0
end_operator
begin_operator
up f1 f4
0
1
0 4 1 4
0
end_operator
begin_operator
up f1 f5
0
1
0 4 1 5
0
end_operator
begin_operator
up f1 f6
0
1
0 4 1 6
0
end_operator
begin_operator
up f1 f7
0
1
0 4 1 7
0
end_operator
begin_operator
up f2 f3
0
1
0 4 2 3
0
end_operator
begin_operator
up f2 f4
0
1
0 4 2 4
0
end_operator
begin_operator
up f2 f5
0
1
0 4 2 5
0
end_operator
begin_operator
up f2 f6
0
1
0 4 2 6
0
end_operator
begin_operator
up f2 f7
0
1
0 4 2 7
0
end_operator
begin_operator
up f3 f4
0
1
0 4 3 4
0
end_operator
begin_operator
up f3 f5
0
1
0 4 3 5
0
end_operator
begin_operator
up f3 f6
0
1
0 4 3 6
0
end_operator
begin_operator
up f3 f7
0
1
0 4 3 7
0
end_operator
begin_operator
up f4 f5
0
1
0 4 4 5
0
end_operator
begin_operator
up f4 f6
0
1
0 4 4 6
0
end_operator
begin_operator
up f4 f7
0
1
0 4 4 7
0
end_operator
begin_operator
up f5 f6
0
1
0 4 5 6
0
end_operator
begin_operator
up f5 f7
0
1
0 4 5 7
0
end_operator
begin_operator
up f6 f7
0
1
0 4 6 7
0
end_operator
0
