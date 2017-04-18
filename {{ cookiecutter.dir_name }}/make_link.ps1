$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("{{ cookiecutter.formal_name }}.lnk")
$Shortcut.TargetPath = $PSScriptRoot + "\python\pythonw.exe"
$Shortcut.Arguments = "app\start.py"
$Shortcut.IconLocation = $PSScriptRoot + "\app\{{ cookiecutter.app_name }}.ico,0"
$Shortcut.Description = "{{ cookiecutter.description }}"
$Shortcut.Save()
