import pyautogui as pag
import time

# Mouse Functions
# Gets the current Screen resolution
print(pag.size())

# This step will pause app to give user time to move mouse to location
time.sleep(3)

# This prints the current mouse x and y coordinates
print(pag.position())

# This will move the mouse cursor instantly
#pag.moveTo(100, 100)

# Move cursor to location and take 4 seconds to complete the move
#pag.moveTo(1000, 1000, 4)

# Mouse Clicks
#pag.click(100, 100, 3, 3, button="left")
# x = 100
# y = 100
# 3 = clicks
# 3 = duration
# button = left mouse


