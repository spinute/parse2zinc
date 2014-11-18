~/fastdownward/src/translate/translate.py ~/fastdownward/benchmarks/gripper/domain.pddl ~/fastdownward/benchmarks/gripper/prob01.pddl
mv output.sas ~/Dropbox/program/parse2zinc/tmp

~/Dropbox/program/parse2zinc/bin/sas_generator ~/Dropbox/program/parse2zinc/tmp/output.sas

~/fastdownward/src/VAL/validate ~/Dropbox/program/parse2zinc/domain/gripper/domain.pddl ~/Dropbox/program/parse2zinc/domain/gripper/prob01.pddl ~/Dropbox/program/parse2zinc/tmp/ans_plan > ~/Dropbox/program/parse2zinc/tmp/validate_result

~/Dropbox/program/parse2zinc/bin/check_valid ~/Dropbox/program/parse2zinc/tmp/validate_result
