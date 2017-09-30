# HelloLCD
Hello World for HD44780 Character LCD in Swift

This relies on the SwiftyGPIO library for HD44780 LCD Displays at https://github.com/uraimo/HD44780CharacterLCD.swift

Note that this was tested with an Leo Sales / OSEPP LCD-01 16x2 LCD Display available at Micro Center http://www.microcenter.com/product/453104/16x2_lcd_display_panel_module

I made these connections:
VSS Ground
VDD 5V
V0 1000 ohm resistor, then Ground
RS GPIO 16
RW Ground
E GPIO 22
D0-D3 not connected
D4 GPIO 23
D5 GPIO 24
D6 GPIO 25
D7 GPIO 26
A 100 ohm resistor, then 5V
K Ground

TODO Use a potentiometer to adjust contrast on V9 and possibly backlight level on A
