begin_version
3
end_version
begin_metric
0
end_metric
21
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
2
Atom boarded(p4)
NegatedAtom boarded(p4)
end_variable
begin_variable
var5
-1
2
Atom boarded(p5)
NegatedAtom boarded(p5)
end_variable
begin_variable
var6
-1
2
Atom boarded(p6)
NegatedAtom boarded(p6)
end_variable
begin_variable
var7
-1
2
Atom boarded(p7)
NegatedAtom boarded(p7)
end_variable
begin_variable
var8
-1
2
Atom boarded(p8)
NegatedAtom boarded(p8)
end_variable
begin_variable
var9
-1
2
Atom boarded(p9)
NegatedAtom boarded(p9)
end_variable
begin_variable
var10
-1
20
Atom lift-at(f0)
Atom lift-at(f1)
Atom lift-at(f10)
Atom lift-at(f11)
Atom lift-at(f12)
Atom lift-at(f13)
Atom lift-at(f14)
Atom lift-at(f15)
Atom lift-at(f16)
Atom lift-at(f17)
Atom lift-at(f18)
Atom lift-at(f19)
Atom lift-at(f2)
Atom lift-at(f3)
Atom lift-at(f4)
Atom lift-at(f5)
Atom lift-at(f6)
Atom lift-at(f7)
Atom lift-at(f8)
Atom lift-at(f9)
end_variable
begin_variable
var11
-1
2
Atom served(p0)
NegatedAtom served(p0)
end_variable
begin_variable
var12
-1
2
Atom served(p1)
NegatedAtom served(p1)
end_variable
begin_variable
var13
-1
2
Atom served(p2)
NegatedAtom served(p2)
end_variable
begin_variable
var14
-1
2
Atom served(p3)
NegatedAtom served(p3)
end_variable
begin_variable
var15
-1
2
Atom served(p4)
NegatedAtom served(p4)
end_variable
begin_variable
var16
-1
2
Atom served(p5)
NegatedAtom served(p5)
end_variable
begin_variable
var17
-1
2
Atom served(p6)
NegatedAtom served(p6)
end_variable
begin_variable
var18
-1
2
Atom served(p7)
NegatedAtom served(p7)
end_variable
begin_variable
var19
-1
2
Atom served(p8)
NegatedAtom served(p8)
end_variable
begin_variable
var20
-1
2
Atom served(p9)
NegatedAtom served(p9)
end_variable
1
begin_mutex_group
20
10 0
10 1
10 2
10 3
10 4
10 5
10 6
10 7
10 8
10 9
10 10
10 11
10 12
10 13
10 14
10 15
10 16
10 17
10 18
10 19
end_mutex_group
begin_state
1
1
1
1
1
1
1
1
1
1
0
1
1
1
1
1
1
1
1
1
1
end_state
begin_goal
10
11 0
12 0
13 0
14 0
15 0
16 0
17 0
18 0
19 0
20 0
end_goal
400
begin_operator
board f0 p0
1
10 0
1
0 0 -1 0
0
end_operator
begin_operator
board f0 p5
1
10 0
1
0 5 -1 0
0
end_operator
begin_operator
board f0 p8
1
10 0
1
0 8 -1 0
0
end_operator
begin_operator
board f1 p4
1
10 1
1
0 4 -1 0
0
end_operator
begin_operator
board f10 p7
1
10 2
1
0 7 -1 0
0
end_operator
begin_operator
board f10 p9
1
10 2
1
0 9 -1 0
0
end_operator
begin_operator
board f16 p2
1
10 8
1
0 2 -1 0
0
end_operator
begin_operator
board f17 p6
1
10 9
1
0 6 -1 0
0
end_operator
begin_operator
board f19 p1
1
10 11
1
0 1 -1 0
0
end_operator
begin_operator
board f5 p3
1
10 15
1
0 3 -1 0
0
end_operator
begin_operator
depart f1 p0
1
10 1
2
0 0 0 1
0 11 -1 0
0
end_operator
begin_operator
depart f1 p7
1
10 1
2
0 7 0 1
0 18 -1 0
0
end_operator
begin_operator
depart f10 p3
1
10 2
2
0 3 0 1
0 14 -1 0
0
end_operator
begin_operator
depart f11 p4
1
10 3
2
0 4 0 1
0 15 -1 0
0
end_operator
begin_operator
depart f18 p8
1
10 10
2
0 8 0 1
0 19 -1 0
0
end_operator
begin_operator
depart f3 p2
1
10 13
2
0 2 0 1
0 13 -1 0
0
end_operator
begin_operator
depart f3 p9
1
10 13
2
0 9 0 1
0 20 -1 0
0
end_operator
begin_operator
depart f4 p1
1
10 14
2
0 1 0 1
0 12 -1 0
0
end_operator
begin_operator
depart f7 p6
1
10 17
2
0 6 0 1
0 17 -1 0
0
end_operator
begin_operator
depart f8 p5
1
10 18
2
0 5 0 1
0 16 -1 0
0
end_operator
begin_operator
down f1 f0
0
1
0 10 1 0
0
end_operator
begin_operator
down f10 f0
0
1
0 10 2 0
0
end_operator
begin_operator
down f10 f1
0
1
0 10 2 1
0
end_operator
begin_operator
down f10 f2
0
1
0 10 2 12
0
end_operator
begin_operator
down f10 f3
0
1
0 10 2 13
0
end_operator
begin_operator
down f10 f4
0
1
0 10 2 14
0
end_operator
begin_operator
down f10 f5
0
1
0 10 2 15
0
end_operator
begin_operator
down f10 f6
0
1
0 10 2 16
0
end_operator
begin_operator
down f10 f7
0
1
0 10 2 17
0
end_operator
begin_operator
down f10 f8
0
1
0 10 2 18
0
end_operator
begin_operator
down f10 f9
0
1
0 10 2 19
0
end_operator
begin_operator
down f11 f0
0
1
0 10 3 0
0
end_operator
begin_operator
down f11 f1
0
1
0 10 3 1
0
end_operator
begin_operator
down f11 f10
0
1
0 10 3 2
0
end_operator
begin_operator
down f11 f2
0
1
0 10 3 12
0
end_operator
begin_operator
down f11 f3
0
1
0 10 3 13
0
end_operator
begin_operator
down f11 f4
0
1
0 10 3 14
0
end_operator
begin_operator
down f11 f5
0
1
0 10 3 15
0
end_operator
begin_operator
down f11 f6
0
1
0 10 3 16
0
end_operator
begin_operator
down f11 f7
0
1
0 10 3 17
0
end_operator
begin_operator
down f11 f8
0
1
0 10 3 18
0
end_operator
begin_operator
down f11 f9
0
1
0 10 3 19
0
end_operator
begin_operator
down f12 f0
0
1
0 10 4 0
0
end_operator
begin_operator
down f12 f1
0
1
0 10 4 1
0
end_operator
begin_operator
down f12 f10
0
1
0 10 4 2
0
end_operator
begin_operator
down f12 f11
0
1
0 10 4 3
0
end_operator
begin_operator
down f12 f2
0
1
0 10 4 12
0
end_operator
begin_operator
down f12 f3
0
1
0 10 4 13
0
end_operator
begin_operator
down f12 f4
0
1
0 10 4 14
0
end_operator
begin_operator
down f12 f5
0
1
0 10 4 15
0
end_operator
begin_operator
down f12 f6
0
1
0 10 4 16
0
end_operator
begin_operator
down f12 f7
0
1
0 10 4 17
0
end_operator
begin_operator
down f12 f8
0
1
0 10 4 18
0
end_operator
begin_operator
down f12 f9
0
1
0 10 4 19
0
end_operator
begin_operator
down f13 f0
0
1
0 10 5 0
0
end_operator
begin_operator
down f13 f1
0
1
0 10 5 1
0
end_operator
begin_operator
down f13 f10
0
1
0 10 5 2
0
end_operator
begin_operator
down f13 f11
0
1
0 10 5 3
0
end_operator
begin_operator
down f13 f12
0
1
0 10 5 4
0
end_operator
begin_operator
down f13 f2
0
1
0 10 5 12
0
end_operator
begin_operator
down f13 f3
0
1
0 10 5 13
0
end_operator
begin_operator
down f13 f4
0
1
0 10 5 14
0
end_operator
begin_operator
down f13 f5
0
1
0 10 5 15
0
end_operator
begin_operator
down f13 f6
0
1
0 10 5 16
0
end_operator
begin_operator
down f13 f7
0
1
0 10 5 17
0
end_operator
begin_operator
down f13 f8
0
1
0 10 5 18
0
end_operator
begin_operator
down f13 f9
0
1
0 10 5 19
0
end_operator
begin_operator
down f14 f0
0
1
0 10 6 0
0
end_operator
begin_operator
down f14 f1
0
1
0 10 6 1
0
end_operator
begin_operator
down f14 f10
0
1
0 10 6 2
0
end_operator
begin_operator
down f14 f11
0
1
0 10 6 3
0
end_operator
begin_operator
down f14 f12
0
1
0 10 6 4
0
end_operator
begin_operator
down f14 f13
0
1
0 10 6 5
0
end_operator
begin_operator
down f14 f2
0
1
0 10 6 12
0
end_operator
begin_operator
down f14 f3
0
1
0 10 6 13
0
end_operator
begin_operator
down f14 f4
0
1
0 10 6 14
0
end_operator
begin_operator
down f14 f5
0
1
0 10 6 15
0
end_operator
begin_operator
down f14 f6
0
1
0 10 6 16
0
end_operator
begin_operator
down f14 f7
0
1
0 10 6 17
0
end_operator
begin_operator
down f14 f8
0
1
0 10 6 18
0
end_operator
begin_operator
down f14 f9
0
1
0 10 6 19
0
end_operator
begin_operator
down f15 f0
0
1
0 10 7 0
0
end_operator
begin_operator
down f15 f1
0
1
0 10 7 1
0
end_operator
begin_operator
down f15 f10
0
1
0 10 7 2
0
end_operator
begin_operator
down f15 f11
0
1
0 10 7 3
0
end_operator
begin_operator
down f15 f12
0
1
0 10 7 4
0
end_operator
begin_operator
down f15 f13
0
1
0 10 7 5
0
end_operator
begin_operator
down f15 f14
0
1
0 10 7 6
0
end_operator
begin_operator
down f15 f2
0
1
0 10 7 12
0
end_operator
begin_operator
down f15 f3
0
1
0 10 7 13
0
end_operator
begin_operator
down f15 f4
0
1
0 10 7 14
0
end_operator
begin_operator
down f15 f5
0
1
0 10 7 15
0
end_operator
begin_operator
down f15 f6
0
1
0 10 7 16
0
end_operator
begin_operator
down f15 f7
0
1
0 10 7 17
0
end_operator
begin_operator
down f15 f8
0
1
0 10 7 18
0
end_operator
begin_operator
down f15 f9
0
1
0 10 7 19
0
end_operator
begin_operator
down f16 f0
0
1
0 10 8 0
0
end_operator
begin_operator
down f16 f1
0
1
0 10 8 1
0
end_operator
begin_operator
down f16 f10
0
1
0 10 8 2
0
end_operator
begin_operator
down f16 f11
0
1
0 10 8 3
0
end_operator
begin_operator
down f16 f12
0
1
0 10 8 4
0
end_operator
begin_operator
down f16 f13
0
1
0 10 8 5
0
end_operator
begin_operator
down f16 f14
0
1
0 10 8 6
0
end_operator
begin_operator
down f16 f15
0
1
0 10 8 7
0
end_operator
begin_operator
down f16 f2
0
1
0 10 8 12
0
end_operator
begin_operator
down f16 f3
0
1
0 10 8 13
0
end_operator
begin_operator
down f16 f4
0
1
0 10 8 14
0
end_operator
begin_operator
down f16 f5
0
1
0 10 8 15
0
end_operator
begin_operator
down f16 f6
0
1
0 10 8 16
0
end_operator
begin_operator
down f16 f7
0
1
0 10 8 17
0
end_operator
begin_operator
down f16 f8
0
1
0 10 8 18
0
end_operator
begin_operator
down f16 f9
0
1
0 10 8 19
0
end_operator
begin_operator
down f17 f0
0
1
0 10 9 0
0
end_operator
begin_operator
down f17 f1
0
1
0 10 9 1
0
end_operator
begin_operator
down f17 f10
0
1
0 10 9 2
0
end_operator
begin_operator
down f17 f11
0
1
0 10 9 3
0
end_operator
begin_operator
down f17 f12
0
1
0 10 9 4
0
end_operator
begin_operator
down f17 f13
0
1
0 10 9 5
0
end_operator
begin_operator
down f17 f14
0
1
0 10 9 6
0
end_operator
begin_operator
down f17 f15
0
1
0 10 9 7
0
end_operator
begin_operator
down f17 f16
0
1
0 10 9 8
0
end_operator
begin_operator
down f17 f2
0
1
0 10 9 12
0
end_operator
begin_operator
down f17 f3
0
1
0 10 9 13
0
end_operator
begin_operator
down f17 f4
0
1
0 10 9 14
0
end_operator
begin_operator
down f17 f5
0
1
0 10 9 15
0
end_operator
begin_operator
down f17 f6
0
1
0 10 9 16
0
end_operator
begin_operator
down f17 f7
0
1
0 10 9 17
0
end_operator
begin_operator
down f17 f8
0
1
0 10 9 18
0
end_operator
begin_operator
down f17 f9
0
1
0 10 9 19
0
end_operator
begin_operator
down f18 f0
0
1
0 10 10 0
0
end_operator
begin_operator
down f18 f1
0
1
0 10 10 1
0
end_operator
begin_operator
down f18 f10
0
1
0 10 10 2
0
end_operator
begin_operator
down f18 f11
0
1
0 10 10 3
0
end_operator
begin_operator
down f18 f12
0
1
0 10 10 4
0
end_operator
begin_operator
down f18 f13
0
1
0 10 10 5
0
end_operator
begin_operator
down f18 f14
0
1
0 10 10 6
0
end_operator
begin_operator
down f18 f15
0
1
0 10 10 7
0
end_operator
begin_operator
down f18 f16
0
1
0 10 10 8
0
end_operator
begin_operator
down f18 f17
0
1
0 10 10 9
0
end_operator
begin_operator
down f18 f2
0
1
0 10 10 12
0
end_operator
begin_operator
down f18 f3
0
1
0 10 10 13
0
end_operator
begin_operator
down f18 f4
0
1
0 10 10 14
0
end_operator
begin_operator
down f18 f5
0
1
0 10 10 15
0
end_operator
begin_operator
down f18 f6
0
1
0 10 10 16
0
end_operator
begin_operator
down f18 f7
0
1
0 10 10 17
0
end_operator
begin_operator
down f18 f8
0
1
0 10 10 18
0
end_operator
begin_operator
down f18 f9
0
1
0 10 10 19
0
end_operator
begin_operator
down f19 f0
0
1
0 10 11 0
0
end_operator
begin_operator
down f19 f1
0
1
0 10 11 1
0
end_operator
begin_operator
down f19 f10
0
1
0 10 11 2
0
end_operator
begin_operator
down f19 f11
0
1
0 10 11 3
0
end_operator
begin_operator
down f19 f12
0
1
0 10 11 4
0
end_operator
begin_operator
down f19 f13
0
1
0 10 11 5
0
end_operator
begin_operator
down f19 f14
0
1
0 10 11 6
0
end_operator
begin_operator
down f19 f15
0
1
0 10 11 7
0
end_operator
begin_operator
down f19 f16
0
1
0 10 11 8
0
end_operator
begin_operator
down f19 f17
0
1
0 10 11 9
0
end_operator
begin_operator
down f19 f18
0
1
0 10 11 10
0
end_operator
begin_operator
down f19 f2
0
1
0 10 11 12
0
end_operator
begin_operator
down f19 f3
0
1
0 10 11 13
0
end_operator
begin_operator
down f19 f4
0
1
0 10 11 14
0
end_operator
begin_operator
down f19 f5
0
1
0 10 11 15
0
end_operator
begin_operator
down f19 f6
0
1
0 10 11 16
0
end_operator
begin_operator
down f19 f7
0
1
0 10 11 17
0
end_operator
begin_operator
down f19 f8
0
1
0 10 11 18
0
end_operator
begin_operator
down f19 f9
0
1
0 10 11 19
0
end_operator
begin_operator
down f2 f0
0
1
0 10 12 0
0
end_operator
begin_operator
down f2 f1
0
1
0 10 12 1
0
end_operator
begin_operator
down f3 f0
0
1
0 10 13 0
0
end_operator
begin_operator
down f3 f1
0
1
0 10 13 1
0
end_operator
begin_operator
down f3 f2
0
1
0 10 13 12
0
end_operator
begin_operator
down f4 f0
0
1
0 10 14 0
0
end_operator
begin_operator
down f4 f1
0
1
0 10 14 1
0
end_operator
begin_operator
down f4 f2
0
1
0 10 14 12
0
end_operator
begin_operator
down f4 f3
0
1
0 10 14 13
0
end_operator
begin_operator
down f5 f0
0
1
0 10 15 0
0
end_operator
begin_operator
down f5 f1
0
1
0 10 15 1
0
end_operator
begin_operator
down f5 f2
0
1
0 10 15 12
0
end_operator
begin_operator
down f5 f3
0
1
0 10 15 13
0
end_operator
begin_operator
down f5 f4
0
1
0 10 15 14
0
end_operator
begin_operator
down f6 f0
0
1
0 10 16 0
0
end_operator
begin_operator
down f6 f1
0
1
0 10 16 1
0
end_operator
begin_operator
down f6 f2
0
1
0 10 16 12
0
end_operator
begin_operator
down f6 f3
0
1
0 10 16 13
0
end_operator
begin_operator
down f6 f4
0
1
0 10 16 14
0
end_operator
begin_operator
down f6 f5
0
1
0 10 16 15
0
end_operator
begin_operator
down f7 f0
0
1
0 10 17 0
0
end_operator
begin_operator
down f7 f1
0
1
0 10 17 1
0
end_operator
begin_operator
down f7 f2
0
1
0 10 17 12
0
end_operator
begin_operator
down f7 f3
0
1
0 10 17 13
0
end_operator
begin_operator
down f7 f4
0
1
0 10 17 14
0
end_operator
begin_operator
down f7 f5
0
1
0 10 17 15
0
end_operator
begin_operator
down f7 f6
0
1
0 10 17 16
0
end_operator
begin_operator
down f8 f0
0
1
0 10 18 0
0
end_operator
begin_operator
down f8 f1
0
1
0 10 18 1
0
end_operator
begin_operator
down f8 f2
0
1
0 10 18 12
0
end_operator
begin_operator
down f8 f3
0
1
0 10 18 13
0
end_operator
begin_operator
down f8 f4
0
1
0 10 18 14
0
end_operator
begin_operator
down f8 f5
0
1
0 10 18 15
0
end_operator
begin_operator
down f8 f6
0
1
0 10 18 16
0
end_operator
begin_operator
down f8 f7
0
1
0 10 18 17
0
end_operator
begin_operator
down f9 f0
0
1
0 10 19 0
0
end_operator
begin_operator
down f9 f1
0
1
0 10 19 1
0
end_operator
begin_operator
down f9 f2
0
1
0 10 19 12
0
end_operator
begin_operator
down f9 f3
0
1
0 10 19 13
0
end_operator
begin_operator
down f9 f4
0
1
0 10 19 14
0
end_operator
begin_operator
down f9 f5
0
1
0 10 19 15
0
end_operator
begin_operator
down f9 f6
0
1
0 10 19 16
0
end_operator
begin_operator
down f9 f7
0
1
0 10 19 17
0
end_operator
begin_operator
down f9 f8
0
1
0 10 19 18
0
end_operator
begin_operator
up f0 f1
0
1
0 10 0 1
0
end_operator
begin_operator
up f0 f10
0
1
0 10 0 2
0
end_operator
begin_operator
up f0 f11
0
1
0 10 0 3
0
end_operator
begin_operator
up f0 f12
0
1
0 10 0 4
0
end_operator
begin_operator
up f0 f13
0
1
0 10 0 5
0
end_operator
begin_operator
up f0 f14
0
1
0 10 0 6
0
end_operator
begin_operator
up f0 f15
0
1
0 10 0 7
0
end_operator
begin_operator
up f0 f16
0
1
0 10 0 8
0
end_operator
begin_operator
up f0 f17
0
1
0 10 0 9
0
end_operator
begin_operator
up f0 f18
0
1
0 10 0 10
0
end_operator
begin_operator
up f0 f19
0
1
0 10 0 11
0
end_operator
begin_operator
up f0 f2
0
1
0 10 0 12
0
end_operator
begin_operator
up f0 f3
0
1
0 10 0 13
0
end_operator
begin_operator
up f0 f4
0
1
0 10 0 14
0
end_operator
begin_operator
up f0 f5
0
1
0 10 0 15
0
end_operator
begin_operator
up f0 f6
0
1
0 10 0 16
0
end_operator
begin_operator
up f0 f7
0
1
0 10 0 17
0
end_operator
begin_operator
up f0 f8
0
1
0 10 0 18
0
end_operator
begin_operator
up f0 f9
0
1
0 10 0 19
0
end_operator
begin_operator
up f1 f10
0
1
0 10 1 2
0
end_operator
begin_operator
up f1 f11
0
1
0 10 1 3
0
end_operator
begin_operator
up f1 f12
0
1
0 10 1 4
0
end_operator
begin_operator
up f1 f13
0
1
0 10 1 5
0
end_operator
begin_operator
up f1 f14
0
1
0 10 1 6
0
end_operator
begin_operator
up f1 f15
0
1
0 10 1 7
0
end_operator
begin_operator
up f1 f16
0
1
0 10 1 8
0
end_operator
begin_operator
up f1 f17
0
1
0 10 1 9
0
end_operator
begin_operator
up f1 f18
0
1
0 10 1 10
0
end_operator
begin_operator
up f1 f19
0
1
0 10 1 11
0
end_operator
begin_operator
up f1 f2
0
1
0 10 1 12
0
end_operator
begin_operator
up f1 f3
0
1
0 10 1 13
0
end_operator
begin_operator
up f1 f4
0
1
0 10 1 14
0
end_operator
begin_operator
up f1 f5
0
1
0 10 1 15
0
end_operator
begin_operator
up f1 f6
0
1
0 10 1 16
0
end_operator
begin_operator
up f1 f7
0
1
0 10 1 17
0
end_operator
begin_operator
up f1 f8
0
1
0 10 1 18
0
end_operator
begin_operator
up f1 f9
0
1
0 10 1 19
0
end_operator
begin_operator
up f10 f11
0
1
0 10 2 3
0
end_operator
begin_operator
up f10 f12
0
1
0 10 2 4
0
end_operator
begin_operator
up f10 f13
0
1
0 10 2 5
0
end_operator
begin_operator
up f10 f14
0
1
0 10 2 6
0
end_operator
begin_operator
up f10 f15
0
1
0 10 2 7
0
end_operator
begin_operator
up f10 f16
0
1
0 10 2 8
0
end_operator
begin_operator
up f10 f17
0
1
0 10 2 9
0
end_operator
begin_operator
up f10 f18
0
1
0 10 2 10
0
end_operator
begin_operator
up f10 f19
0
1
0 10 2 11
0
end_operator
begin_operator
up f11 f12
0
1
0 10 3 4
0
end_operator
begin_operator
up f11 f13
0
1
0 10 3 5
0
end_operator
begin_operator
up f11 f14
0
1
0 10 3 6
0
end_operator
begin_operator
up f11 f15
0
1
0 10 3 7
0
end_operator
begin_operator
up f11 f16
0
1
0 10 3 8
0
end_operator
begin_operator
up f11 f17
0
1
0 10 3 9
0
end_operator
begin_operator
up f11 f18
0
1
0 10 3 10
0
end_operator
begin_operator
up f11 f19
0
1
0 10 3 11
0
end_operator
begin_operator
up f12 f13
0
1
0 10 4 5
0
end_operator
begin_operator
up f12 f14
0
1
0 10 4 6
0
end_operator
begin_operator
up f12 f15
0
1
0 10 4 7
0
end_operator
begin_operator
up f12 f16
0
1
0 10 4 8
0
end_operator
begin_operator
up f12 f17
0
1
0 10 4 9
0
end_operator
begin_operator
up f12 f18
0
1
0 10 4 10
0
end_operator
begin_operator
up f12 f19
0
1
0 10 4 11
0
end_operator
begin_operator
up f13 f14
0
1
0 10 5 6
0
end_operator
begin_operator
up f13 f15
0
1
0 10 5 7
0
end_operator
begin_operator
up f13 f16
0
1
0 10 5 8
0
end_operator
begin_operator
up f13 f17
0
1
0 10 5 9
0
end_operator
begin_operator
up f13 f18
0
1
0 10 5 10
0
end_operator
begin_operator
up f13 f19
0
1
0 10 5 11
0
end_operator
begin_operator
up f14 f15
0
1
0 10 6 7
0
end_operator
begin_operator
up f14 f16
0
1
0 10 6 8
0
end_operator
begin_operator
up f14 f17
0
1
0 10 6 9
0
end_operator
begin_operator
up f14 f18
0
1
0 10 6 10
0
end_operator
begin_operator
up f14 f19
0
1
0 10 6 11
0
end_operator
begin_operator
up f15 f16
0
1
0 10 7 8
0
end_operator
begin_operator
up f15 f17
0
1
0 10 7 9
0
end_operator
begin_operator
up f15 f18
0
1
0 10 7 10
0
end_operator
begin_operator
up f15 f19
0
1
0 10 7 11
0
end_operator
begin_operator
up f16 f17
0
1
0 10 8 9
0
end_operator
begin_operator
up f16 f18
0
1
0 10 8 10
0
end_operator
begin_operator
up f16 f19
0
1
0 10 8 11
0
end_operator
begin_operator
up f17 f18
0
1
0 10 9 10
0
end_operator
begin_operator
up f17 f19
0
1
0 10 9 11
0
end_operator
begin_operator
up f18 f19
0
1
0 10 10 11
0
end_operator
begin_operator
up f2 f10
0
1
0 10 12 2
0
end_operator
begin_operator
up f2 f11
0
1
0 10 12 3
0
end_operator
begin_operator
up f2 f12
0
1
0 10 12 4
0
end_operator
begin_operator
up f2 f13
0
1
0 10 12 5
0
end_operator
begin_operator
up f2 f14
0
1
0 10 12 6
0
end_operator
begin_operator
up f2 f15
0
1
0 10 12 7
0
end_operator
begin_operator
up f2 f16
0
1
0 10 12 8
0
end_operator
begin_operator
up f2 f17
0
1
0 10 12 9
0
end_operator
begin_operator
up f2 f18
0
1
0 10 12 10
0
end_operator
begin_operator
up f2 f19
0
1
0 10 12 11
0
end_operator
begin_operator
up f2 f3
0
1
0 10 12 13
0
end_operator
begin_operator
up f2 f4
0
1
0 10 12 14
0
end_operator
begin_operator
up f2 f5
0
1
0 10 12 15
0
end_operator
begin_operator
up f2 f6
0
1
0 10 12 16
0
end_operator
begin_operator
up f2 f7
0
1
0 10 12 17
0
end_operator
begin_operator
up f2 f8
0
1
0 10 12 18
0
end_operator
begin_operator
up f2 f9
0
1
0 10 12 19
0
end_operator
begin_operator
up f3 f10
0
1
0 10 13 2
0
end_operator
begin_operator
up f3 f11
0
1
0 10 13 3
0
end_operator
begin_operator
up f3 f12
0
1
0 10 13 4
0
end_operator
begin_operator
up f3 f13
0
1
0 10 13 5
0
end_operator
begin_operator
up f3 f14
0
1
0 10 13 6
0
end_operator
begin_operator
up f3 f15
0
1
0 10 13 7
0
end_operator
begin_operator
up f3 f16
0
1
0 10 13 8
0
end_operator
begin_operator
up f3 f17
0
1
0 10 13 9
0
end_operator
begin_operator
up f3 f18
0
1
0 10 13 10
0
end_operator
begin_operator
up f3 f19
0
1
0 10 13 11
0
end_operator
begin_operator
up f3 f4
0
1
0 10 13 14
0
end_operator
begin_operator
up f3 f5
0
1
0 10 13 15
0
end_operator
begin_operator
up f3 f6
0
1
0 10 13 16
0
end_operator
begin_operator
up f3 f7
0
1
0 10 13 17
0
end_operator
begin_operator
up f3 f8
0
1
0 10 13 18
0
end_operator
begin_operator
up f3 f9
0
1
0 10 13 19
0
end_operator
begin_operator
up f4 f10
0
1
0 10 14 2
0
end_operator
begin_operator
up f4 f11
0
1
0 10 14 3
0
end_operator
begin_operator
up f4 f12
0
1
0 10 14 4
0
end_operator
begin_operator
up f4 f13
0
1
0 10 14 5
0
end_operator
begin_operator
up f4 f14
0
1
0 10 14 6
0
end_operator
begin_operator
up f4 f15
0
1
0 10 14 7
0
end_operator
begin_operator
up f4 f16
0
1
0 10 14 8
0
end_operator
begin_operator
up f4 f17
0
1
0 10 14 9
0
end_operator
begin_operator
up f4 f18
0
1
0 10 14 10
0
end_operator
begin_operator
up f4 f19
0
1
0 10 14 11
0
end_operator
begin_operator
up f4 f5
0
1
0 10 14 15
0
end_operator
begin_operator
up f4 f6
0
1
0 10 14 16
0
end_operator
begin_operator
up f4 f7
0
1
0 10 14 17
0
end_operator
begin_operator
up f4 f8
0
1
0 10 14 18
0
end_operator
begin_operator
up f4 f9
0
1
0 10 14 19
0
end_operator
begin_operator
up f5 f10
0
1
0 10 15 2
0
end_operator
begin_operator
up f5 f11
0
1
0 10 15 3
0
end_operator
begin_operator
up f5 f12
0
1
0 10 15 4
0
end_operator
begin_operator
up f5 f13
0
1
0 10 15 5
0
end_operator
begin_operator
up f5 f14
0
1
0 10 15 6
0
end_operator
begin_operator
up f5 f15
0
1
0 10 15 7
0
end_operator
begin_operator
up f5 f16
0
1
0 10 15 8
0
end_operator
begin_operator
up f5 f17
0
1
0 10 15 9
0
end_operator
begin_operator
up f5 f18
0
1
0 10 15 10
0
end_operator
begin_operator
up f5 f19
0
1
0 10 15 11
0
end_operator
begin_operator
up f5 f6
0
1
0 10 15 16
0
end_operator
begin_operator
up f5 f7
0
1
0 10 15 17
0
end_operator
begin_operator
up f5 f8
0
1
0 10 15 18
0
end_operator
begin_operator
up f5 f9
0
1
0 10 15 19
0
end_operator
begin_operator
up f6 f10
0
1
0 10 16 2
0
end_operator
begin_operator
up f6 f11
0
1
0 10 16 3
0
end_operator
begin_operator
up f6 f12
0
1
0 10 16 4
0
end_operator
begin_operator
up f6 f13
0
1
0 10 16 5
0
end_operator
begin_operator
up f6 f14
0
1
0 10 16 6
0
end_operator
begin_operator
up f6 f15
0
1
0 10 16 7
0
end_operator
begin_operator
up f6 f16
0
1
0 10 16 8
0
end_operator
begin_operator
up f6 f17
0
1
0 10 16 9
0
end_operator
begin_operator
up f6 f18
0
1
0 10 16 10
0
end_operator
begin_operator
up f6 f19
0
1
0 10 16 11
0
end_operator
begin_operator
up f6 f7
0
1
0 10 16 17
0
end_operator
begin_operator
up f6 f8
0
1
0 10 16 18
0
end_operator
begin_operator
up f6 f9
0
1
0 10 16 19
0
end_operator
begin_operator
up f7 f10
0
1
0 10 17 2
0
end_operator
begin_operator
up f7 f11
0
1
0 10 17 3
0
end_operator
begin_operator
up f7 f12
0
1
0 10 17 4
0
end_operator
begin_operator
up f7 f13
0
1
0 10 17 5
0
end_operator
begin_operator
up f7 f14
0
1
0 10 17 6
0
end_operator
begin_operator
up f7 f15
0
1
0 10 17 7
0
end_operator
begin_operator
up f7 f16
0
1
0 10 17 8
0
end_operator
begin_operator
up f7 f17
0
1
0 10 17 9
0
end_operator
begin_operator
up f7 f18
0
1
0 10 17 10
0
end_operator
begin_operator
up f7 f19
0
1
0 10 17 11
0
end_operator
begin_operator
up f7 f8
0
1
0 10 17 18
0
end_operator
begin_operator
up f7 f9
0
1
0 10 17 19
0
end_operator
begin_operator
up f8 f10
0
1
0 10 18 2
0
end_operator
begin_operator
up f8 f11
0
1
0 10 18 3
0
end_operator
begin_operator
up f8 f12
0
1
0 10 18 4
0
end_operator
begin_operator
up f8 f13
0
1
0 10 18 5
0
end_operator
begin_operator
up f8 f14
0
1
0 10 18 6
0
end_operator
begin_operator
up f8 f15
0
1
0 10 18 7
0
end_operator
begin_operator
up f8 f16
0
1
0 10 18 8
0
end_operator
begin_operator
up f8 f17
0
1
0 10 18 9
0
end_operator
begin_operator
up f8 f18
0
1
0 10 18 10
0
end_operator
begin_operator
up f8 f19
0
1
0 10 18 11
0
end_operator
begin_operator
up f8 f9
0
1
0 10 18 19
0
end_operator
begin_operator
up f9 f10
0
1
0 10 19 2
0
end_operator
begin_operator
up f9 f11
0
1
0 10 19 3
0
end_operator
begin_operator
up f9 f12
0
1
0 10 19 4
0
end_operator
begin_operator
up f9 f13
0
1
0 10 19 5
0
end_operator
begin_operator
up f9 f14
0
1
0 10 19 6
0
end_operator
begin_operator
up f9 f15
0
1
0 10 19 7
0
end_operator
begin_operator
up f9 f16
0
1
0 10 19 8
0
end_operator
begin_operator
up f9 f17
0
1
0 10 19 9
0
end_operator
begin_operator
up f9 f18
0
1
0 10 19 10
0
end_operator
begin_operator
up f9 f19
0
1
0 10 19 11
0
end_operator
0
