$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut($PSScriptRoot + "{{ cookiecutter.formal_name }}.lnk")
$Shortcut.TargetPath = $PSScriptRoot + "python\pythonw.exe"
$Shortcut.Arguments = "app\start.py"
$Shortcut.IconLocation = $PSScriptRoot + "app\app.ico,0"
$Shortcut.Description = "{{ cookiecutter.description }}"
$Shortcut.Save()
