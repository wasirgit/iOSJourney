import UIKit

/*
 Object oriented Programming
 -------------------------------
 During the life of the app, we create and destroy objects.
  
 Create  = Initialize (init) = Allocate (Add to memory)
 Destroy = Deinitialize (deinit) = Deallocate (Remove from memory)
 
 
 ** Automatic Reference Counting (ARC) ** important
 
 A live count of number of objects in memory.
 Create 1 object, count goes up by 1
 Create 2 object, count goes up by 2
 Destroy 1 object, count goes down by 1
 
 
 The more objects in memory, the slower the app perfors.
 We want to keep the ARC as low as possible.
 We want to create objects only when we need them.
 
 And destroy them as soon as we no longer need them.
 
 For example, if an app has screens and user is moving from screen 1 to screen 2, we only want to allocate screen 2 when we need it (i.e when user clicks a button to seque to screen 2). When we to screen 2, we want to deallocate screen 1.
 
 
 ** There are 2 types of memory. ****
 Stack and Heap
 only obejcts in the Heap are counted towards ARC
 
 
 -> Objects in the Stack
   - String, Bool, Int, most basic types
   - NEW: Struc, Enum
 
 -> Objects in the Heap
   - Functions
  - New: Class Actors
 
 
 Iphone is a "Multi-threaded environment"
 
 There are multiple "Threads" or "Engines" running simultanously.
 Each thread has a Stack
 But there is only 1 Heap for all threads
 Therefore, we can say,
  Thread is faster, lower memory footprint, preferable
  Heap is slower. higher memory footprint
 

 
    ** Value vs Reference types **
 
    - Objects in the Stack are "Value" types. When you edit a Value type, you create a copy of it with new data.
 
    - Objects in the Heap are "Reference" types. When you edit a Reference type, you edit the original object.
      When you edit a Reference type, you edit the object that you are referencing. This "reference" is called "Pointer" because it "Points" to an object in the Heap (in memory).
    
 */

struct MyFirstObject {
    let title:String = "Hello World"
}

class MySecondObject {
    let title:String = "Hello World"
}

/*
  *** Class vs Struc explained to a 5-year old ***
   Imagine a school and in the school there are classrooms. Within each class, there quizzes. During the day, the teacher will hand out many different quizzes to different classes. The students will answer the quizzes and return them back to the teacher.
 
   "school"  = App
   "classroom" = Class
   "quiz" = Struct
  In this example, we have a classroom and there are many actions that occur inside the classroom. In code, we create a class and can perform actions within the class.
  In this example, there are many different types of quizzes,. The teacher hands out the quizzes and the students take the quizzes and return them to the teacher.
 
  In code, we create many structs and pass them around out app with ease.
 
 NOTE: this metaphor is not perfect. Technically, a 'quizz' can be a class, etc.
 
 
 
  ** We want to use a class for things like:
     'Managers', 'DataService', 'Service', 'Factory', 'ViewModel'
   Objects that we create and want to perform actions inside.
 
 We want to use a struct for things like:
  Data models
  Obejcts that we create and pass around our app. 
 */
