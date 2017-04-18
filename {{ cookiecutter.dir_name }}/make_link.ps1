$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut($PS1 + "\{{ cookiecutter.app_name }}\windows\{{ cookiecutter.formal_name }}.lnk")
$Shortcut.TargetPath = $PS1 + "\{{ cookiecutter.app_name }}\windows\python\pythonw.exe"
$Shortcut.RelativePath = $PS1 + "\{{ cookiecutter.app_name }}\windows\python\pythonw.exe"
$Shortcut.Arguments = "app\start.py"
$Shortcut.IconLocation = $PS1 + "\{{ cookiecutter.app_name }}\windows\app\app.ico,0"
$Shortcut.Description = "{{ cookiecutter.description }}"
$Shortcut.WorkingDirectory = $PS1 + "\{{ cookiecutter.app_name }}\windows"
$Shortcut.Save()
