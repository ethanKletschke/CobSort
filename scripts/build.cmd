@REM Command Prompt compile script
@REM First run "set_env.cmd" from GnuCOBOL's root folder

@REM Build in the binary folder without displaying warnings
cobc -I ../src ^
  --free ^
  -x ../src/*.cbl ^
  -o ../bin/SortingFiles ^
  -q -w

@REM Note: Run from the "scripts" folder
