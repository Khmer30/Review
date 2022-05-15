/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself() {
    print("Hi there, I am June. I just move to the earth.")
}
introduceMyself()
//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation
func magicEightBall() -> Int {
    let randomNum = Int.random(in: 0...4)
    return randomNum
}

let randomNum = magicEightBall()
switch randomNum {
    case 0:
        print("random number is zero")
    case 1:
        print("random number is one")
    case 2:
        print("random number is two")
    case 3:
        print("random number is three")
    case 4:
        print("random number is four")
    
default:
    print("congratulation!")
}

/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
