import pyautogui as pag
import time

# This function gets the pixel colour in RGB
# calls the rgb colour directly under the current mouse position
# Used to check state of button or toggle
def get_pixel_colour():
    co_ordinate = pag.position()
    RGB = pag.pixel(co_ordinate[0], co_ordinate[1])
    return RGB

# This function converts RGB into Hex.
# Used inline with get_pixel_colour to generate RGB
def convert_rgb_hex(RGB):
    RGB = get_pixel_colour()
    print('#%02x%02x%02x' % (RGB[0], RGB[1], RGB[2]))

# Gives user time to move mouse
time.sleep(2)

# Combining 2 functions to get RGB and convert to Hex
convert_rgb_hex(get_pixel_colour())
