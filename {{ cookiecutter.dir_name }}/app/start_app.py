import os
import sys

basedir = os.path.dirname(os.path.dirname(__file__))

sys.path.append(os.path.join(basedir, 'app'))
sys.path.append(os.path.join(basedir, 'app_packages'))

with open(os.path.join(basedir, 'app', '{{ cookiecutter.app_name }}', 'app.py')) as f:
    code = compile(f.read(), "app.py", 'exec')
    exec(code, globals(), locals())
