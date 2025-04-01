@echo off
setlocal

popd
set "input=..\src"
set "output=..\vm"

pushd "%~dp0"
java -classpath "%CLASSPATH%;bin/classes;bin/lib/Hack.jar;bin/lib/Compilers.jar" ^
  Hack.Compiler.JackCompiler "%input%"
popd

move "%input%\*.vm" "%output%"