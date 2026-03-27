/**
 * Shadows of the Knight - Episode 1
 * 
 * Problem: Batman must find a bomb in a building before it explodes.
 * Use binary search to find the bomb's location efficiently.
 * 
 * The building has a rectangular layout (W x H).
 * Each turn you receive the direction of the bomb relative to Batman's position.
 * You must output Batman's next position.
 * 
 * Directions: U (Up), UR (Up-Right), R (Right), DR (Down-Right),
 *             D (Down), DL (Down-Left), L (Left), UL (Up-Left)
 */

import Foundation

let inputs = (readLine()!).split(separator: " ").map(String.init)
let W = Int(inputs[0])! // width of the building
let H = Int(inputs[1])! // height of the building
let N = Int(readLine()!)! // maximum number of turns before game over

let inputs2 = (readLine()!).split(separator: " ").map(String.init)
var batmanX = Int(inputs2[0])!
var batmanY = Int(inputs2[1])!

// Initialize search boundaries
var minX = 0
var maxX = W - 1
var minY = 0
var maxY = H - 1

// Game loop
while true {
    let bombDir = readLine()! // Direction of the bomb from Batman's position
    
    // Update horizontal boundaries
    if bombDir.contains("R") {
        minX = batmanX + 1
    } else if bombDir.contains("L") {
        maxX = batmanX - 1
    }
    
    // Update vertical boundaries
    if bombDir.contains("U") {
        maxY = batmanY - 1
    } else if bombDir.contains("D") {
        minY = batmanY + 1
    }
    
    // Move Batman to the middle of the remaining search space
    batmanX = (minX + maxX) / 2
    batmanY = (minY + maxY) / 2
    
    print("\(batmanX) \(batmanY)")
}
