from pynput.mouse import Button, Controller
from pynput.keyboard import Key, Controller as keyboardController
mouse = Controller()
keyboard = keyboardController()

# ls, vars, os
import os, ls, _vars

from time import sleep



# ls one image name or the first name
oneFile = ls.ls_dir("images")["files"][0]

# open gimp with quietly 
# gimp --no-splash  --console-messages 



gimpCmd = 'gimp --no-splash  --console-messages "%s"' % oneFile 
print(gimpCmd)
os.system("""/bin/sh -c '%s && %s' &""" % (_vars._vars, gimpCmd))
print("""/bin/sh -c '%s && %s'""" % (_vars._vars, gimpCmd))


