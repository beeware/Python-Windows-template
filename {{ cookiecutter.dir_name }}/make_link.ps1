$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("{{ }}\{{ cookiecutter.app_name }}\windows\{{ cookiecutter.formal_name }}.lnk")
$Shortcut.TargetPath = "{{ }}\{{ cookiecutter.app_name }}\windows\python\pythonw.exe"
$Shortcut.RelativePath = "{{ }}\{{ cookiecutter.app_name }}\windows\python\pythonw.exe"
$Shortcut.Arguments = "app\start.py"
$Shortcut.IconLocation = "{{ }}\{{ cookiecutter.app_name }}\windows\app\app.ico,0"
$Shortcut.Description = "{{ cookiecutter.description }}"
$Shortcut.WorkingDirectory = "{{ }}\{{ cookiecutter.app_name }}\windows"
$Shortcut.Save()
