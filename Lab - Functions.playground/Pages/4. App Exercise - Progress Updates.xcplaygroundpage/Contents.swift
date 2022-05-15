/*:
## App Exercise - Progress Updates
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 In many cases you want to provide input to a function. For example, the progress function you wrote in the Functioning App exercise might be located in an area of your project that doesn't have access to the value of `steps` and `goal`. In that case, whenever you called the function, you would need to provide it with the number of steps that have been taken and the goal for the day so it can print the correct progress statement.
 
 Rewrite the function `progressUpdate`, only this time give it two parameters of type `Int` called `steps` and `goal`, respectively. Like before, it should print "You're off to a good start." if steps is less than 10% of goal, "You're almost halfway there!" if steps is less than half of goal, "You're over halfway there!" if steps is less than 90% of goal, "You're almost there!" if steps is less than goal, and "You beat your goal!" otherwise. Call the function and observe the printout.
 
 Call the function a number of times, passing in different values of `steps` and `goal`. Observe the printouts and make sure what is printed to the console is what you would expect for the parameters passsed in.
 */
func progressUpdate(steps: Int = 1000, goal: Int = 5000){
    let percentage = Double(steps) / Double(goal)
    print(percentage)
    
    if percentage < 0.10 {
        print("You're off to a good start.")
    } else if percentage < 0.50 {
        print("You're almost halfway there!")
    } else if percentage < 0.90 {
        print("You're over halfway there!")
    } else {
        print("You beat your goal")
    }
}

progressUpdate(steps: 800, goal: 1200)
progressUpdate(steps: 1000, goal: 5001)
//:  Your fitness tracking app is going to help runners stay on pace to reach their goals. Write a function called pacing that takes four `Double` parameters called `currentDistance`, `totalDistance`, `currentTime`, and `goalTime`. Your function should calculate whether or not the user is on pace to hit or beat `goalTime`. If yes, print "Keep it up!", otherwise print "You've got to push it just a bit harder!"
func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double){
    let currentSpeed = currentDistance / currentTime
    print(currentSpeed)
    
    let completedTime = 30.0
    if completedTime < goalTime {
        print("Keep it up!")
    } else {
        print("You've got to push it just a bit harder!")
    }
}
pacing(currentDistance: 1000.0, totalDistance: 5000.0, currentTime: 15.0, goalTime: 20.0)
/*:
[Previous](@previous)  |  page 4 of 6  |  [Next: Exercise - Return Values](@next)
 */
