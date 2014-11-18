~/fastdownward/src/translate/translate.py ~/fastdownward/benchmarks/gripper/domain.pddl ~/fastdownward/benchmarks/gripper/prob01.pddl

bin/sas_generator output.sas

~/fastdownward/src/VAL/validate domain/gripper/domain.pddl domain/gripper/prob01.pddl ans_plan > tmp

./check_valid tmp