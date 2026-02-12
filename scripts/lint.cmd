@REM Command Prompt linting script
@REM First run "set_env.cmd" from GnuCOBOL's root folder

@REM Check the syntax of the source code files
cobc -I ../src ^
  -fsyntax-only ^
  --free ^
  ../src/**.cob ^
  -Wall ^
  -Wextra ^
  -Wno-terminator

@REM Note: Run from the same folder as the script.
