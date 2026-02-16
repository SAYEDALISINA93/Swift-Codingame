# ⚡ Thor's Power Quest - Swift Solution
## 📋 Problem Description
The Goal: Guide Thor across a grid map to reach the light of power using optimal directional movements.

## 🗺️ Map Specifications
- Dimensions: 40 cells wide (X-axis) × 18 cells high (Y-axis)
- Coordinate System: Top-left origin (0,0) to bottom-right (39,17)
- Movement: Thor moves 1 cell per turn in 8 possible directions
## 🎮 Game Mechanics
### Initial Input
- lightX, lightY: Target coordinates of the light of power
- initialTX, initialTY: Thor's starting position
### Directional Commands
<pre>
NW    N    NE
  ↖   ↑   ↗
W  ←  ⚡  →  E
  ↙   ↓   ↘
SW    S    SE
</pre>
### Victory & Defeat Conditions
- ✅ Win: Thor reaches the exact light coordinates
- ❌ Lose: Thor moves outside the map boundaries

```import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 * ---
 * Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.
 **/

let inputs = (readLine()!).split(separator: " ").map(String.init)
let lightX = Int(inputs[0])! // the X position of the light of power
let lightY = Int(inputs[1])! // the Y position of the light of power
let initialTx = Int(inputs[2])! // Thor's starting X position
let initialTy = Int(inputs[3])! // Thor's starting Y position


var currentX = initialTx
var currentY = initialTy

// game loop
while true {
    let remainingTurns = Int(readLine()!)! // The remaining amount of turns Thor can move. Do not remove this line.
    var direction = ""

    // Write an action using print("message...")
    // To debug: print("Debug messages...", to: &errStream)

    // A single line providing the move to be made: N NE E SE S SW W or NW
    if (lightX > currentX && lightY == currentY)
    {
        currentX += 1
        print("E")
    }else if (lightX < currentX && lightY == currentY)
    {
        currentX -= 1
        print("W")
    }
    else if (lightX == currentX && lightY > currentY)
    {
       currentY += 1
        print("S")
    }
    else if (lightX == currentX && lightY < currentY)
    {
        currentY -= 1
        print("N")
    }
    else if (lightX > currentX && lightY > currentY)
    {
        currentY += 1
        currentX += 1
        print("SE")
    }
    else if (lightX > currentX && lightY < currentY)
    {
        currentX += 1
        currentY -= 1
        print("NE")
    }else if (lightX < currentX && lightY > currentY)
    {
        currentX -= 1
        currentY += 1
        print("SW")
    }else if (lightX < initialTx && lightY < currentY)
    {
        currentX -= 1
        currentY -= 1
        print("NW")
    }
}
```
