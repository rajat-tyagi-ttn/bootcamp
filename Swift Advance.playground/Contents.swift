import UIKit

protocol someProtocol{
}

extension someProtocol{
    func sayHello(){
        print("Hello!")
    }
}


class MyClass : someProtocol{

}
var myClassObject = MyClass()
myClassObject.sayHello()
enum Directions : String{
    case North,South,East,West
}



extension Directions{
    func tellDirection(){
        print(self.rawValue)
    }
}



var direction = Directions.South
direction.tellDirection()



var someArray  = [1,5,nil,65,87,nil,62]

var mapExample = someArray.map{$0}


var flatMapExample = someArray.compactMap{$0}


print(mapExample)
print(flatMapExample)


let newArray = Array(1...10)

var reducedArray = newArray.reduce(100,{$0 + $1})

print(reducedArray)





struct Person {

    var name : String
    var age : Int

}
let person1 = Person(name: "Sam", age: 23)
let person2 = Person(name: "John", age: 30)
let person3 = Person(name: "Rob", age: 27)
let person4 = Person(name: "Luke", age: 20)

let personArray = [person1, person2, person3, person4]

func ageMoreThan(_ arr : [Person]) -> [Person]{
    let newPersonArray = arr.filter{$0.age > 25}
    return newPersonArray
}

print(ageMoreThan(personArray))





class SomeClass{

    var name : String = ""
    var department : String = ""

}

extension SomeClass{
    var uiTextFieldDelegate : UITextField?{
        get{
            return UITextField.init()
        }

    }
}

 

