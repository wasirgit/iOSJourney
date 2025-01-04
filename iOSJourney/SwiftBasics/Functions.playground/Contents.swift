import UIKit

func myFirstFunction(){
    print("Hello, World!")
}

myFirstFunction()



// check user status
// this functions returns a boolean value
func checkUserStatus() -> Bool{
    return true
}


func doSomething(){
    var title:String = "Avengers"
    // explain this
    // this is a guard statement. It is used to check a condition. If the condition is not met, then the code inside the guard statement is executed.  In this case, the guard statement checks if the title is "Avengers". If it is not, then the function returns.
    
    guard title == "Avengers" else {
        return
    }
}

