// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "MQTTLCD",
    dependencies: [
        .Package(url: "https://github.com/uraimo/HD44780CharacterLCD.swift.git", majorVersion: 2)
    ]
)
