import UIKit

var userName:String = "John Doe"
var userIsPremium:Bool = false
var userIsNew:Bool = true


@MainActor func getUserName() -> String {
    userName
}

@MainActor func getUserIsPremium() -> Bool {
    userIsPremium
}
@MainActor func getUserInfo() -> (String, Bool) {
    
    return (userName, userIsPremium)
    
}


 
