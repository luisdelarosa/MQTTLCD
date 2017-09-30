import SwiftyGPIO
import HD44780LCD
import Foundation

let gpios = SwiftyGPIO.GPIOs(for:.RaspberryPi3)
var rs = gpios[.P16]!
var e = gpios[.P22]!
var d4 = gpios[.P23]!
var d5 = gpios[.P24]!
var d6 = gpios[.P25]!
var d7 = gpios[.P26]!

// LCD display device setup
let width = 16
let height = 2
let lcd = HD44780LCD(rs:rs,e:e,d7:d7,d6:d6,d5:d5,d4:d4,width:width, height:height)
lcd.clearScreen()

    let task = Process()
    task.launchPath = "/usr/bin/env"
    task.arguments = ["mosquitto_sub", "-t", "test"] 

    let pipe = Pipe()
    task.standardOutput = pipe
        task.launch()

        let outHandle = pipe.fileHandleForReading
	repeat {
	       	let data = outHandle.readData(ofLength:5)
		let output = String(data: data, encoding: .utf8)!
		print("humidity:\(output)")
		lcd.printString(x:0,y:0,what:"humidity:\(output)",usCharSet:true)
	} while (true)



// Print out something
// TODO fix the x/y transpositioning
//lcd.printString(x:0,y:0,what:"Hello world!",usCharSet:true)
//lcd.printString(x:1,y:0,what:"love,@louielouie",usCharSet:true)

// Clean up after 10 seconds
sleep(10)
lcd.clearScreen()
