//
//  Einstein.swift
//  Unit1-02 Swift Einstein
//
//  Created by Abdul on 2026-09-15.
//  Version 1.0.0
//

import Foundation

// Custom error for bad input
enum InputError: Error {
    case invalidNumber
}

// Speed of light constant in m/s
let speedOfLight: Double = 2.998e8

// Prompts user for mass
print("Enter mass of object in kilograms: ")

// Reads user input string
if let inputString = readLine() {
    do {
        // Converts input string to double
        guard let mass = Double(inputString) else {
            throw InputError.invalidNumber
        }

        // Checks if mass is positive or zero
        if mass >= 0 {
            // Formula to calculate energy
            let energy = mass * pow(speedOfLight, 2)

            // Formats energy output to scientific notation with 3 decimal places
            let formattedEnergy = String(format: "%.3e", energy)

            // Displays result
            print("The energy released from this object is: \(formattedEnergy) J")
        } else {
            // Displayed if mass is negative
            print("Please enter a positive or 0 integer.")
        }
    } catch InputError.invalidNumber {
        // Catches non numeric input
        print("Please enter a valid number.")
    } catch {
        // Unexpected error backup
        print("An unexpected error occurred.")
    }
}