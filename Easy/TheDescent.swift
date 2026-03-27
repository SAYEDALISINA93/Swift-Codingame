/**
 * The Descent
 * 
 * Problem: Destroy the mountains before your starship collides with one of them.
 * For that you need to shoot the highest mountain on your path.
 * 
 * Goal: At the start of each game turn, shoot the highest mountain by outputting its index.
 * Input: 8 mountain heights
 * Output: The index (0 to 7) of the mountain to shoot
 */

import Foundation

// Game loop
while true {
    var maxHeight = 0
    var maxIndex = 0
    
    // Read the heights of 8 mountains
    for i in 0..<8 {
        let mountainH = Int(readLine()!)!
        
        // Find the highest mountain
        if mountainH > maxHeight {
            maxHeight = mountainH
            maxIndex = i
        }
    }
    
    // Output the index of the highest mountain
    print(maxIndex)
}
