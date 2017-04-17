@echo off
SET %PYTHONPATH%=app;app_packages

python\python.exe app\{{ cookiecutter.app_name }}\app

pause
