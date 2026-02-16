# 🚀 Mountain Destroyer - Swift Solution

## 📋 Problem Description

**The Goal:** Navigate a starship through a mountainous terrain by destroying the highest mountain in your path during each pass to avoid collision.

## 🎮 Game Rules

- **Input:** 8 mountain heights (indexed 0-7) are provided each turn
- **Output:** Fire at the highest mountain by returning its index
- **Mechanics:** Each shot reduces the mountain's height; your ship descends after each pass
- **Victory:** Destroy all mountains before collision
- **Defeat:** Crash into a mountain, provide incorrect output, or timeout

## 💡 Solution Strategy

This Swift implementation uses a **greedy algorithm** approach:

1. **Initialize Tracking Variables**
   - `maxHeight`: Tracks the highest mountain found (-1 initially)
   - `maxIndex`: Stores the index of the tallest mountain
   - `targetList`: Array to store all mountain heights

2. **Read Input**
   - Loop through 8 mountains
   - Store each height in `targetList`

3. **Find Maximum**
   - Iterate through the array
   - Compare each mountain height with current maximum
   - Update `maxHeight` and `maxIndex` when a taller mountain is found

4. **Fire!**
   - Output the index of the tallest mountain

## 🔧 Technical Details

- **Language:** Swift with Glibc/Foundation
- **Time Complexity:** O(n) where n = 8 mountains
- **Space Complexity:** O(n) for storing mountain heights
- **Response Time:** < 100ms per turn

## 🎯 Key Features

- Simple and efficient linear search algorithm
- Clear variable naming for readability
- Proper use of Swift's standard input/output
- Debug stream support via stderr

---

**Perfect for:** CodinGame challenges, algorithm practice, and learning Swift game loop structures! 🎓


```import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * The while loop represents the game.
 * Each iteration represents a turn of the game
 * where you are given inputs (the heights of the mountains)
 * and where you have to print an output (the index of the mountain to fire on)
 * The inputs you are given are automatically updated according to your last actions.
 **/


// game loop
while true {
    var maxHeight = -1
    var maxIndex = 0

    var targetList: [Int] = []

    for i in 0...7 {
        let mountainH = Int(readLine()!)! // represents the height of one mountain.
        targetList.append(mountainH)
    }

    // Write an action using print("message...")
    // To debug: print("Debug messages...", to: &errStream)

    // print("Listt Debug....", targetList.sorted(by: >))

    for i in 0...7 {
        if targetList[i] > maxHeight{
            maxHeight = targetList[i]
            maxIndex = i
        }
    }

    print(maxIndex)     // The index of the mountain to fire on.


}
```
