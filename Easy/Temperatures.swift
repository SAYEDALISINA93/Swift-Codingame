/**
 * Temperatures
 * 
 * Problem: Find the temperature closest to zero among temperature values.
 * If two numbers are equally close to zero, positive integer has to be considered closest to zero.
 * 
 * Input:
 * - n: the number of temperatures to analyze
 * - temps: the n temperatures expressed as integers ranging from -273 to 5526
 * 
 * Output: The temperature closest to 0
 */

import Foundation

let n = Int(readLine()!)!

if n == 0 {
    print("0")
} else {
    let temps = (readLine()!).split(separator: " ").map { Int($0)! }
    
    var closest = temps[0]
    var minDistance = abs(temps[0])
    
    for temp in temps {
        let distance = abs(temp)
        
        // If distance is smaller, or equal but positive, update closest
        if distance < minDistance || (distance == minDistance && temp > closest) {
            closest = temp
            minDistance = distance
        }
    }
    
    print(closest)
}
