array[1..7] of int: n_vals = [2, 2, 2, 2, 1, 4, 4];
array[1..34] of string: name = ["(drop ball1 rooma left)", "(drop ball1 rooma right)", "(drop ball1 roomb left)", "(drop ball1 roomb right)", "(drop ball2 rooma left)", "(drop ball2 rooma right)", "(drop ball2 roomb left)", "(drop ball2 roomb right)", "(drop ball3 rooma left)", "(drop ball3 rooma right)", "(drop ball3 roomb left)", "(drop ball3 roomb right)", "(drop ball4 rooma left)", "(drop ball4 rooma right)", "(drop ball4 roomb left)", "(drop ball4 roomb right)", "(move rooma roomb)", "(move roomb rooma)", "(pick ball1 rooma left)", "(pick ball1 rooma right)", "(pick ball1 roomb left)", "(pick ball1 roomb right)", "(pick ball2 rooma left)", "(pick ball2 rooma right)", "(pick ball2 roomb left)", "(pick ball2 roomb right)", "(pick ball3 rooma left)", "(pick ball3 rooma right)", "(pick ball3 roomb left)", "(pick ball3 roomb right)", "(pick ball4 rooma left)", "(pick ball4 rooma right)", "(pick ball4 roomb left)", "(pick ball4 roomb right)"];
array[0..7,0..33] of var 0..1: actions;
array[0..7,0..2] of var 0..1: add_0;
array[0..7,0..2] of var 0..1: del_0;
array[0..7,0..2] of var 0..1: preadd_0;
array[0..7,0..2] of var 0..1: predel_0;
array[0..7,0..2] of var 0..1: maintain_0;
array [0..7,0..2] of var int: sum_0;
constraint forall(t in 0..7, j in 0..2)(add_0[t,j] + preadd_0[t,j] + maintain_0[t,j] = sum_0[t,j] );
array[0..7,0..2] of var 0..1: add_1;
array[0..7,0..2] of var 0..1: del_1;
array[0..7,0..2] of var 0..1: preadd_1;
array[0..7,0..2] of var 0..1: predel_1;
array[0..7,0..2] of var 0..1: maintain_1;
array [0..7,0..2] of var int: sum_1;
constraint forall(t in 0..7, j in 0..2)(add_1[t,j] + preadd_1[t,j] + maintain_1[t,j] = sum_1[t,j] );
array[0..7,0..2] of var 0..1: add_2;
array[0..7,0..2] of var 0..1: del_2;
array[0..7,0..2] of var 0..1: preadd_2;
array[0..7,0..2] of var 0..1: predel_2;
array[0..7,0..2] of var 0..1: maintain_2;
array [0..7,0..2] of var int: sum_2;
constraint forall(t in 0..7, j in 0..2)(add_2[t,j] + preadd_2[t,j] + maintain_2[t,j] = sum_2[t,j] );
array[0..7,0..2] of var 0..1: add_3;
array[0..7,0..2] of var 0..1: del_3;
array[0..7,0..2] of var 0..1: preadd_3;
array[0..7,0..2] of var 0..1: predel_3;
array[0..7,0..2] of var 0..1: maintain_3;
array [0..7,0..2] of var int: sum_3;
constraint forall(t in 0..7, j in 0..2)(add_3[t,j] + preadd_3[t,j] + maintain_3[t,j] = sum_3[t,j] );
array[0..7,0..1] of var 0..1: add_4;
array[0..7,0..1] of var 0..1: del_4;
array[0..7,0..1] of var 0..1: preadd_4;
array[0..7,0..1] of var 0..1: predel_4;
array[0..7,0..1] of var 0..1: maintain_4;
array [0..7,0..1] of var int: sum_4;
constraint forall(t in 0..7, j in 0..1)(add_4[t,j] + preadd_4[t,j] + maintain_4[t,j] = sum_4[t,j] );
array[0..7,0..4] of var 0..1: add_5;
array[0..7,0..4] of var 0..1: del_5;
array[0..7,0..4] of var 0..1: preadd_5;
array[0..7,0..4] of var 0..1: predel_5;
array[0..7,0..4] of var 0..1: maintain_5;
array [0..7,0..4] of var int: sum_5;
constraint forall(t in 0..7, j in 0..4)(add_5[t,j] + preadd_5[t,j] + maintain_5[t,j] = sum_5[t,j] );
array[0..7,0..4] of var 0..1: add_6;
array[0..7,0..4] of var 0..1: del_6;
array[0..7,0..4] of var 0..1: preadd_6;
array[0..7,0..4] of var 0..1: predel_6;
array[0..7,0..4] of var 0..1: maintain_6;
array [0..7,0..4] of var int: sum_6;
constraint forall(t in 0..7, j in 0..4)(add_6[t,j] + preadd_6[t,j] + maintain_6[t,j] = sum_6[t,j] );
predicate among_diff_0(var int: nvar, array[int] of var int: x)=  nvar = sum(i in index_set(x)) (bool2int(x[i] != 0) );
include "among.mzn";
constraint forall(t in 0..7)(among_diff_0(1, [sum_0[t, j] | j in 0..n_vals[1]]));
constraint forall(t in 0..7)(among_diff_0(1, [sum_1[t, j] | j in 0..n_vals[2]]));
constraint forall(t in 0..7)(among_diff_0(1, [sum_2[t, j] | j in 0..n_vals[3]]));
constraint forall(t in 0..7)(among_diff_0(1, [sum_3[t, j] | j in 0..n_vals[4]]));
constraint forall(t in 0..7)(among_diff_0(1, [sum_4[t, j] | j in 0..n_vals[5]]));
constraint forall(t in 0..7)(among_diff_0(1, [sum_5[t, j] | j in 0..n_vals[6]]));
constraint forall(t in 0..7)(among_diff_0(1, [sum_6[t, j] | j in 0..n_vals[7]]));
constraint add_0[0,0] = 1;
constraint add_0[0,1] = 0;
constraint maintain_0[0,1] = 0;
constraint preadd_0[0,1] = 0;
constraint add_0[0,2] = 0;
constraint maintain_0[0,2] = 0;
constraint preadd_0[0,2] = 0;
constraint add_1[0,0] = 1;
constraint add_1[0,1] = 0;
constraint maintain_1[0,1] = 0;
constraint preadd_1[0,1] = 0;
constraint add_1[0,2] = 0;
constraint maintain_1[0,2] = 0;
constraint preadd_1[0,2] = 0;
constraint add_2[0,0] = 1;
constraint add_2[0,1] = 0;
constraint maintain_2[0,1] = 0;
constraint preadd_2[0,1] = 0;
constraint add_2[0,2] = 0;
constraint maintain_2[0,2] = 0;
constraint preadd_2[0,2] = 0;
constraint add_3[0,0] = 1;
constraint add_3[0,1] = 0;
constraint maintain_3[0,1] = 0;
constraint preadd_3[0,1] = 0;
constraint add_3[0,2] = 0;
constraint maintain_3[0,2] = 0;
constraint preadd_3[0,2] = 0;
constraint add_4[0,0] = 1;
constraint add_4[0,1] = 0;
constraint maintain_4[0,1] = 0;
constraint preadd_4[0,1] = 0;
constraint add_5[0,0] = 0;
constraint maintain_5[0,0] = 0;
constraint preadd_5[0,0] = 0;
constraint add_5[0,1] = 0;
constraint maintain_5[0,1] = 0;
constraint preadd_5[0,1] = 0;
constraint add_5[0,2] = 0;
constraint maintain_5[0,2] = 0;
constraint preadd_5[0,2] = 0;
constraint add_5[0,3] = 0;
constraint maintain_5[0,3] = 0;
constraint preadd_5[0,3] = 0;
constraint add_5[0,4] = 1;
constraint add_6[0,0] = 0;
constraint maintain_6[0,0] = 0;
constraint preadd_6[0,0] = 0;
constraint add_6[0,1] = 0;
constraint maintain_6[0,1] = 0;
constraint preadd_6[0,1] = 0;
constraint add_6[0,2] = 0;
constraint maintain_6[0,2] = 0;
constraint preadd_6[0,2] = 0;
constraint add_6[0,3] = 0;
constraint maintain_6[0,3] = 0;
constraint preadd_6[0,3] = 0;
constraint add_6[0,4] = 1;
constraint add_0[7,1] + preadd_0[7,1] + maintain_0[7,1]  >= 1;
constraint add_1[7,1] + preadd_1[7,1] + maintain_1[7,1]  >= 1;
constraint add_2[7,1] + preadd_2[7,1] + maintain_2[7,1]  >= 1;
constraint add_3[7,1] + preadd_3[7,1] + maintain_3[7,1]  >= 1;
constraint forall (t in 1..7)( actions[t,0] - add_0[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,1] - add_0[t,0] <= 0);
constraint forall (t in 1..7) (0 + actions[t,0] + actions[t,1] - add_0[t,0] >= 0);
constraint forall (t in 1..7)( actions[t,2] - del_0[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,3] - del_0[t,0] <= 0);
constraint forall (t in 1..7) (0 + actions[t,2] + actions[t,3] - del_0[t,0] >= 0);
constraint forall (t in 1..7) (0 - preadd_0[t,0] >= 0);
constraint forall (t in 1..7) (0 + actions[t,18] + actions[t,19] - predel_0[t,0] = 0);
constraint forall (t in 1..7)( actions[t,2] - add_0[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,3] - add_0[t,1] <= 0);
constraint forall (t in 1..7) (0 + actions[t,2] + actions[t,3] - add_0[t,1] >= 0);
constraint forall (t in 1..7)( actions[t,0] - del_0[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,1] - del_0[t,1] <= 0);
constraint forall (t in 1..7) (0 + actions[t,0] + actions[t,1] - del_0[t,1] >= 0);
constraint forall (t in 1..7) (0 - preadd_0[t,1] >= 0);
constraint forall (t in 1..7) (0 + actions[t,20] + actions[t,21] - predel_0[t,1] = 0);
constraint forall (t in 1..7)( actions[t,18] - add_0[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,19] - add_0[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,20] - add_0[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,21] - add_0[t,2] <= 0);
constraint forall (t in 1..7) (0 + actions[t,18] + actions[t,19] + actions[t,20] + actions[t,21] - add_0[t,2] >= 0);
constraint forall (t in 1..7)( actions[t,0] - del_0[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,1] - del_0[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,2] - del_0[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,3] - del_0[t,2] <= 0);
constraint forall (t in 1..7) (0 + actions[t,0] + actions[t,1] + actions[t,2] + actions[t,3] - del_0[t,2] >= 0);
constraint forall (t in 1..7) (0 - preadd_0[t,2] >= 0);
constraint forall (t in 1..7) (0 - predel_0[t,2] = 0);
constraint forall (t in 1..7)( actions[t,4] - add_1[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,5] - add_1[t,0] <= 0);
constraint forall (t in 1..7) (0 + actions[t,4] + actions[t,5] - add_1[t,0] >= 0);
constraint forall (t in 1..7)( actions[t,6] - del_1[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,7] - del_1[t,0] <= 0);
constraint forall (t in 1..7) (0 + actions[t,6] + actions[t,7] - del_1[t,0] >= 0);
constraint forall (t in 1..7) (0 - preadd_1[t,0] >= 0);
constraint forall (t in 1..7) (0 + actions[t,22] + actions[t,23] - predel_1[t,0] = 0);
constraint forall (t in 1..7)( actions[t,6] - add_1[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,7] - add_1[t,1] <= 0);
constraint forall (t in 1..7) (0 + actions[t,6] + actions[t,7] - add_1[t,1] >= 0);
constraint forall (t in 1..7)( actions[t,4] - del_1[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,5] - del_1[t,1] <= 0);
constraint forall (t in 1..7) (0 + actions[t,4] + actions[t,5] - del_1[t,1] >= 0);
constraint forall (t in 1..7) (0 - preadd_1[t,1] >= 0);
constraint forall (t in 1..7) (0 + actions[t,24] + actions[t,25] - predel_1[t,1] = 0);
constraint forall (t in 1..7)( actions[t,22] - add_1[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,23] - add_1[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,24] - add_1[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,25] - add_1[t,2] <= 0);
constraint forall (t in 1..7) (0 + actions[t,22] + actions[t,23] + actions[t,24] + actions[t,25] - add_1[t,2] >= 0);
constraint forall (t in 1..7)( actions[t,4] - del_1[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,5] - del_1[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,6] - del_1[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,7] - del_1[t,2] <= 0);
constraint forall (t in 1..7) (0 + actions[t,4] + actions[t,5] + actions[t,6] + actions[t,7] - del_1[t,2] >= 0);
constraint forall (t in 1..7) (0 - preadd_1[t,2] >= 0);
constraint forall (t in 1..7) (0 - predel_1[t,2] = 0);
constraint forall (t in 1..7)( actions[t,8] - add_2[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,9] - add_2[t,0] <= 0);
constraint forall (t in 1..7) (0 + actions[t,8] + actions[t,9] - add_2[t,0] >= 0);
constraint forall (t in 1..7)( actions[t,10] - del_2[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,11] - del_2[t,0] <= 0);
constraint forall (t in 1..7) (0 + actions[t,10] + actions[t,11] - del_2[t,0] >= 0);
constraint forall (t in 1..7) (0 - preadd_2[t,0] >= 0);
constraint forall (t in 1..7) (0 + actions[t,26] + actions[t,27] - predel_2[t,0] = 0);
constraint forall (t in 1..7)( actions[t,10] - add_2[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,11] - add_2[t,1] <= 0);
constraint forall (t in 1..7) (0 + actions[t,10] + actions[t,11] - add_2[t,1] >= 0);
constraint forall (t in 1..7)( actions[t,8] - del_2[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,9] - del_2[t,1] <= 0);
constraint forall (t in 1..7) (0 + actions[t,8] + actions[t,9] - del_2[t,1] >= 0);
constraint forall (t in 1..7) (0 - preadd_2[t,1] >= 0);
constraint forall (t in 1..7) (0 + actions[t,28] + actions[t,29] - predel_2[t,1] = 0);
constraint forall (t in 1..7)( actions[t,26] - add_2[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,27] - add_2[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,28] - add_2[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,29] - add_2[t,2] <= 0);
constraint forall (t in 1..7) (0 + actions[t,26] + actions[t,27] + actions[t,28] + actions[t,29] - add_2[t,2] >= 0);
constraint forall (t in 1..7)( actions[t,8] - del_2[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,9] - del_2[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,10] - del_2[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,11] - del_2[t,2] <= 0);
constraint forall (t in 1..7) (0 + actions[t,8] + actions[t,9] + actions[t,10] + actions[t,11] - del_2[t,2] >= 0);
constraint forall (t in 1..7) (0 - preadd_2[t,2] >= 0);
constraint forall (t in 1..7) (0 - predel_2[t,2] = 0);
constraint forall (t in 1..7)( actions[t,12] - add_3[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,13] - add_3[t,0] <= 0);
constraint forall (t in 1..7) (0 + actions[t,12] + actions[t,13] - add_3[t,0] >= 0);
constraint forall (t in 1..7)( actions[t,14] - del_3[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,15] - del_3[t,0] <= 0);
constraint forall (t in 1..7) (0 + actions[t,14] + actions[t,15] - del_3[t,0] >= 0);
constraint forall (t in 1..7) (0 - preadd_3[t,0] >= 0);
constraint forall (t in 1..7) (0 + actions[t,30] + actions[t,31] - predel_3[t,0] = 0);
constraint forall (t in 1..7)( actions[t,14] - add_3[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,15] - add_3[t,1] <= 0);
constraint forall (t in 1..7) (0 + actions[t,14] + actions[t,15] - add_3[t,1] >= 0);
constraint forall (t in 1..7)( actions[t,12] - del_3[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,13] - del_3[t,1] <= 0);
constraint forall (t in 1..7) (0 + actions[t,12] + actions[t,13] - del_3[t,1] >= 0);
constraint forall (t in 1..7) (0 - preadd_3[t,1] >= 0);
constraint forall (t in 1..7) (0 + actions[t,32] + actions[t,33] - predel_3[t,1] = 0);
constraint forall (t in 1..7)( actions[t,30] - add_3[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,31] - add_3[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,32] - add_3[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,33] - add_3[t,2] <= 0);
constraint forall (t in 1..7) (0 + actions[t,30] + actions[t,31] + actions[t,32] + actions[t,33] - add_3[t,2] >= 0);
constraint forall (t in 1..7)( actions[t,12] - del_3[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,13] - del_3[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,14] - del_3[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,15] - del_3[t,2] <= 0);
constraint forall (t in 1..7) (0 + actions[t,12] + actions[t,13] + actions[t,14] + actions[t,15] - del_3[t,2] >= 0);
constraint forall (t in 1..7) (0 - preadd_3[t,2] >= 0);
constraint forall (t in 1..7) (0 - predel_3[t,2] = 0);
constraint forall (t in 1..7)( actions[t,17] - add_4[t,0] <= 0);
constraint forall (t in 1..7) (0 + actions[t,17] - add_4[t,0] >= 0);
constraint forall (t in 1..7) (0 - del_4[t,0] >= 0);
constraint forall (t in 1..7)( actions[t,0] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,1] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,4] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,5] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,8] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,9] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,12] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,13] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,18] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,19] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,22] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,23] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,26] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,27] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,30] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,31] - preadd_4[t,0] <= 0);
constraint forall (t in 1..7) (0 + actions[t,0] + actions[t,1] + actions[t,4] + actions[t,5] + actions[t,8] + actions[t,9] + actions[t,12] + actions[t,13] + actions[t,18] + actions[t,19] + actions[t,22] + actions[t,23] + actions[t,26] + actions[t,27] + actions[t,30] + actions[t,31] - preadd_4[t,0] >= 0);
constraint forall (t in 1..7) (0 + actions[t,16] - predel_4[t,0] = 0);
constraint forall (t in 1..7)( actions[t,16] - add_4[t,1] <= 0);
constraint forall (t in 1..7) (0 + actions[t,16] - add_4[t,1] >= 0);
constraint forall (t in 1..7) (0 - del_4[t,1] >= 0);
constraint forall (t in 1..7)( actions[t,2] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,3] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,6] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,7] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,10] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,11] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,14] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,15] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,20] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,21] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,24] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,25] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,28] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,29] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,32] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,33] - preadd_4[t,1] <= 0);
constraint forall (t in 1..7) (0 + actions[t,2] + actions[t,3] + actions[t,6] + actions[t,7] + actions[t,10] + actions[t,11] + actions[t,14] + actions[t,15] + actions[t,20] + actions[t,21] + actions[t,24] + actions[t,25] + actions[t,28] + actions[t,29] + actions[t,32] + actions[t,33] - preadd_4[t,1] >= 0);
constraint forall (t in 1..7) (0 + actions[t,17] - predel_4[t,1] = 0);
constraint forall (t in 1..7)( actions[t,18] - add_5[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,20] - add_5[t,0] <= 0);
constraint forall (t in 1..7) (0 + actions[t,18] + actions[t,20] - add_5[t,0] >= 0);
constraint forall (t in 1..7) (0 - del_5[t,0] >= 0);
constraint forall (t in 1..7) (0 - preadd_5[t,0] >= 0);
constraint forall (t in 1..7) (0 + actions[t,0] + actions[t,2] - predel_5[t,0] = 0);
constraint forall (t in 1..7)( actions[t,22] - add_5[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,24] - add_5[t,1] <= 0);
constraint forall (t in 1..7) (0 + actions[t,22] + actions[t,24] - add_5[t,1] >= 0);
constraint forall (t in 1..7) (0 - del_5[t,1] >= 0);
constraint forall (t in 1..7) (0 - preadd_5[t,1] >= 0);
constraint forall (t in 1..7) (0 + actions[t,4] + actions[t,6] - predel_5[t,1] = 0);
constraint forall (t in 1..7)( actions[t,26] - add_5[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,28] - add_5[t,2] <= 0);
constraint forall (t in 1..7) (0 + actions[t,26] + actions[t,28] - add_5[t,2] >= 0);
constraint forall (t in 1..7) (0 - del_5[t,2] >= 0);
constraint forall (t in 1..7) (0 - preadd_5[t,2] >= 0);
constraint forall (t in 1..7) (0 + actions[t,8] + actions[t,10] - predel_5[t,2] = 0);
constraint forall (t in 1..7)( actions[t,30] - add_5[t,3] <= 0);
constraint forall (t in 1..7)( actions[t,32] - add_5[t,3] <= 0);
constraint forall (t in 1..7) (0 + actions[t,30] + actions[t,32] - add_5[t,3] >= 0);
constraint forall (t in 1..7) (0 - del_5[t,3] >= 0);
constraint forall (t in 1..7) (0 - preadd_5[t,3] >= 0);
constraint forall (t in 1..7) (0 + actions[t,12] + actions[t,14] - predel_5[t,3] = 0);
constraint forall (t in 1..7)( actions[t,0] - add_5[t,4] <= 0);
constraint forall (t in 1..7)( actions[t,2] - add_5[t,4] <= 0);
constraint forall (t in 1..7)( actions[t,4] - add_5[t,4] <= 0);
constraint forall (t in 1..7)( actions[t,6] - add_5[t,4] <= 0);
constraint forall (t in 1..7)( actions[t,8] - add_5[t,4] <= 0);
constraint forall (t in 1..7)( actions[t,10] - add_5[t,4] <= 0);
constraint forall (t in 1..7)( actions[t,12] - add_5[t,4] <= 0);
constraint forall (t in 1..7)( actions[t,14] - add_5[t,4] <= 0);
constraint forall (t in 1..7) (0 + actions[t,0] + actions[t,2] + actions[t,4] + actions[t,6] + actions[t,8] + actions[t,10] + actions[t,12] + actions[t,14] - add_5[t,4] >= 0);
constraint forall (t in 1..7) (0 - del_5[t,4] >= 0);
constraint forall (t in 1..7) (0 - preadd_5[t,4] >= 0);
constraint forall (t in 1..7) (0 + actions[t,18] + actions[t,20] + actions[t,22] + actions[t,24] + actions[t,26] + actions[t,28] + actions[t,30] + actions[t,32] - predel_5[t,4] = 0);
constraint forall (t in 1..7)( actions[t,19] - add_6[t,0] <= 0);
constraint forall (t in 1..7)( actions[t,21] - add_6[t,0] <= 0);
constraint forall (t in 1..7) (0 + actions[t,19] + actions[t,21] - add_6[t,0] >= 0);
constraint forall (t in 1..7) (0 - del_6[t,0] >= 0);
constraint forall (t in 1..7) (0 - preadd_6[t,0] >= 0);
constraint forall (t in 1..7) (0 + actions[t,1] + actions[t,3] - predel_6[t,0] = 0);
constraint forall (t in 1..7)( actions[t,23] - add_6[t,1] <= 0);
constraint forall (t in 1..7)( actions[t,25] - add_6[t,1] <= 0);
constraint forall (t in 1..7) (0 + actions[t,23] + actions[t,25] - add_6[t,1] >= 0);
constraint forall (t in 1..7) (0 - del_6[t,1] >= 0);
constraint forall (t in 1..7) (0 - preadd_6[t,1] >= 0);
constraint forall (t in 1..7) (0 + actions[t,5] + actions[t,7] - predel_6[t,1] = 0);
constraint forall (t in 1..7)( actions[t,27] - add_6[t,2] <= 0);
constraint forall (t in 1..7)( actions[t,29] - add_6[t,2] <= 0);
constraint forall (t in 1..7) (0 + actions[t,27] + actions[t,29] - add_6[t,2] >= 0);
constraint forall (t in 1..7) (0 - del_6[t,2] >= 0);
constraint forall (t in 1..7) (0 - preadd_6[t,2] >= 0);
constraint forall (t in 1..7) (0 + actions[t,9] + actions[t,11] - predel_6[t,2] = 0);
constraint forall (t in 1..7)( actions[t,31] - add_6[t,3] <= 0);
constraint forall (t in 1..7)( actions[t,33] - add_6[t,3] <= 0);
constraint forall (t in 1..7) (0 + actions[t,31] + actions[t,33] - add_6[t,3] >= 0);
constraint forall (t in 1..7) (0 - del_6[t,3] >= 0);
constraint forall (t in 1..7) (0 - preadd_6[t,3] >= 0);
constraint forall (t in 1..7) (0 + actions[t,13] + actions[t,15] - predel_6[t,3] = 0);
constraint forall (t in 1..7)( actions[t,1] - add_6[t,4] <= 0);
constraint forall (t in 1..7)( actions[t,3] - add_6[t,4] <= 0);
constraint forall (t in 1..7)( actions[t,5] - add_6[t,4] <= 0);
constraint forall (t in 1..7)( actions[t,7] - add_6[t,4] <= 0);
constraint forall (t in 1..7)( actions[t,9] - add_6[t,4] <= 0);
constraint forall (t in 1..7)( actions[t,11] - add_6[t,4] <= 0);
constraint forall (t in 1..7)( actions[t,13] - add_6[t,4] <= 0);
constraint forall (t in 1..7)( actions[t,15] - add_6[t,4] <= 0);
constraint forall (t in 1..7) (0 + actions[t,1] + actions[t,3] + actions[t,5] + actions[t,7] + actions[t,9] + actions[t,11] + actions[t,13] + actions[t,15] - add_6[t,4] >= 0);
constraint forall (t in 1..7) (0 - del_6[t,4] >= 0);
constraint forall (t in 1..7) (0 - preadd_6[t,4] >= 0);
constraint forall (t in 1..7) (0 + actions[t,19] + actions[t,21] + actions[t,23] + actions[t,25] + actions[t,27] + actions[t,29] + actions[t,31] + actions[t,33] - predel_6[t,4] = 0);
constraint forall (j in 0..n_vals[1], t in 0..7)( add_0[t,j] + maintain_0[t,j] + del_0[t,j] + predel_0[t,j] <= 1);
constraint forall (j in 0..n_vals[1], t in 0..7)( preadd_0[t,j] + maintain_0[t,j] + del_0[t,j] + predel_0[ t,j] <= 1);
constraint forall (j in 0..n_vals[1], t in 0..6)( preadd_0[t+1,j] + maintain_0[t+1,j] + predel_0[t+1,j] - add_0[t,j] - preadd_0[t,j] - maintain_0[t,j] <= 0);
constraint forall (j in 0..n_vals[2], t in 0..7)( add_1[t,j] + maintain_1[t,j] + del_1[t,j] + predel_1[t,j] <= 1);
constraint forall (j in 0..n_vals[2], t in 0..7)( preadd_1[t,j] + maintain_1[t,j] + del_1[t,j] + predel_1[ t,j] <= 1);
constraint forall (j in 0..n_vals[2], t in 0..6)( preadd_1[t+1,j] + maintain_1[t+1,j] + predel_1[t+1,j] - add_1[t,j] - preadd_1[t,j] - maintain_1[t,j] <= 0);
constraint forall (j in 0..n_vals[3], t in 0..7)( add_2[t,j] + maintain_2[t,j] + del_2[t,j] + predel_2[t,j] <= 1);
constraint forall (j in 0..n_vals[3], t in 0..7)( preadd_2[t,j] + maintain_2[t,j] + del_2[t,j] + predel_2[ t,j] <= 1);
constraint forall (j in 0..n_vals[3], t in 0..6)( preadd_2[t+1,j] + maintain_2[t+1,j] + predel_2[t+1,j] - add_2[t,j] - preadd_2[t,j] - maintain_2[t,j] <= 0);
constraint forall (j in 0..n_vals[4], t in 0..7)( add_3[t,j] + maintain_3[t,j] + del_3[t,j] + predel_3[t,j] <= 1);
constraint forall (j in 0..n_vals[4], t in 0..7)( preadd_3[t,j] + maintain_3[t,j] + del_3[t,j] + predel_3[ t,j] <= 1);
constraint forall (j in 0..n_vals[4], t in 0..6)( preadd_3[t+1,j] + maintain_3[t+1,j] + predel_3[t+1,j] - add_3[t,j] - preadd_3[t,j] - maintain_3[t,j] <= 0);
constraint forall (j in 0..n_vals[5], t in 0..7)( add_4[t,j] + maintain_4[t,j] + del_4[t,j] + predel_4[t,j] <= 1);
constraint forall (j in 0..n_vals[5], t in 0..7)( preadd_4[t,j] + maintain_4[t,j] + del_4[t,j] + predel_4[ t,j] <= 1);
constraint forall (j in 0..n_vals[5], t in 0..6)( preadd_4[t+1,j] + maintain_4[t+1,j] + predel_4[t+1,j] - add_4[t,j] - preadd_4[t,j] - maintain_4[t,j] <= 0);
constraint forall (j in 0..n_vals[6], t in 0..7)( add_5[t,j] + maintain_5[t,j] + del_5[t,j] + predel_5[t,j] <= 1);
constraint forall (j in 0..n_vals[6], t in 0..7)( preadd_5[t,j] + maintain_5[t,j] + del_5[t,j] + predel_5[ t,j] <= 1);
constraint forall (j in 0..n_vals[6], t in 0..6)( preadd_5[t+1,j] + maintain_5[t+1,j] + predel_5[t+1,j] - add_5[t,j] - preadd_5[t,j] - maintain_5[t,j] <= 0);
constraint forall (j in 0..n_vals[7], t in 0..7)( add_6[t,j] + maintain_6[t,j] + del_6[t,j] + predel_6[t,j] <= 1);
constraint forall (j in 0..n_vals[7], t in 0..7)( preadd_6[t,j] + maintain_6[t,j] + del_6[t,j] + predel_6[ t,j] <= 1);
constraint forall (j in 0..n_vals[7], t in 0..6)( preadd_6[t+1,j] + maintain_6[t+1,j] + predel_6[t+1,j] - add_6[t,j] - preadd_6[t,j] - maintain_6[t,j] <= 0);
solve satisfy;
output [name[i+1] ++ "\n"
| t in 0..7, i in 0..33 where fix(actions[t,i]) == 1];
