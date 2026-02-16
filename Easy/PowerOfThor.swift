/**
 * Power of Thor - Episode 1
 * 
 * Problem: Thor must reach the light of power by moving in the right direction.
 * The game is played on a grid (40 wide, 18 high).
 * Thor's initial position (thorX, thorY) and the light's position (lightX, lightY) are given.
 * 
 * Goal: Guide Thor to the light by outputting the correct direction at each turn.
 * Available directions: N, NE, E, SE, S, SW, W, NW
 */

import Foundation

// Read initial positions
let inputs = (readLine()!).split(separator: " ").map(String.init)
let lightX = Int(inputs[0])!
let lightY = Int(inputs[1])!
let initialTX = Int(inputs[2])!
let initialTY = Int(inputs[3])!

var thorX = initialTX
var thorY = initialTY

// Game loop
while true {
    _ = Int(readLine()!)! // The remaining amount of turns Thor can move
    
    var directionX = ""
    var directionY = ""
    
    // Calculate vertical direction
    if thorY > lightY {
        directionY = "N"
        thorY -= 1
    } else if thorY < lightY {
        directionY = "S"
        thorY += 1
    }
    
    // Calculate horizontal direction
    if thorX > lightX {
        directionX = "W"
        thorX -= 1
    } else if thorX < lightX {
        directionX = "E"
        thorX += 1
    }
    
    // Output the direction
    print(directionY + directionX)
}
