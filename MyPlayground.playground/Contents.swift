import UIKit

//class Person{
//    var name = ""
//    var age = 0
//    init(_ name:String, _ age:Int){
//
//        self.name = name
//        self.age = age
//
//    }
//}
//
//let p1 = Person("Random",20)
//p1.name
//p1.age
//
//class PersonCLass{
//    var name = ""
//    var age = 0
//    init(_ name:String, _ age:Int){
//
//        self.name = name
//        self.age = age
//
//    }
//}
//let personOne = PersonCLass("Rajat",22)
//
//class PersonStruct{
//    var name = ""
//    var age = 0
//    init(_ name:String, _ age:Int){
//
//        self.name = name
//        self.age = age
//
//    }
//}
//let personTwo = PersonStruct("XYZ",21)

//class Movie{
//    var title = ""
//    var author = ""
//    var publishDate : Date?
//
//    init(){
//        title = "unknown"
//        author = "unknown"
//        publishDate = Date(timeIntervalSinceReferenceDate: -123456789.0)
//    }
//
//    convenience init(_ title:String,  _ author:String){
//        self.init()
//        self.title = title
//        self.author = author
//    }
//}
//
//let m1 = Movie("Dark Knight", "Cristi")
//print(m1.title)
//print(m1.author)
//print(m1.publishDate)

//Ways to Create Arrays

//let arr : [Int] = [9,8,7,6,5]
//var arr2 : [Int] = [10,20,30,40,50]
//var arr3 = [1,2,3,4,5]
//var arr4 = Array(repeating: 7, count: 5)


////Create an array with city 5 city names. Later add other names like Canada, Switzerland, Spain to the end of the array in at least 2 possible ways.
//var cities = ["Delhi","Tokyo","LA","Mumbai","Gotham"]
//print(cities)
//cities.append("Central City")
//cities.append(contentsOf: ["Ghaziabad", "Noida"])
//print(cities)

//
//// immutable array

//let cities2 = ["Delhi","Tokyo","LA","Mumbai","Gotham"]
//print(cities2)



//Create an array with values 14, 18, 15, 16, 23, 52, 95. Replace the values 24 & 48 at 2nd & 4th index of array

//var arr3 = [14, 18, 15, 16, 23, 52, 95]
//print(arr3)
//
//arr3[2] = 24
//arr3[4] = 48
//print(arr3)


//
//let houseAnimals: Set = ["Dog", "Cat"]
//let farmAnimals: Set = ["Cow", "Chiken", "Sheep", "Dog", "Cat"]
//let cityAnimals: Set = ["Bird", "Rat"]
//
//if houseAnimals.isSubset(of: farmAnimals){
//    print("House Animals = Subset of Farm Animals")
//}
//else{
//    print("House Animals != Subset of Farm Animals")
//}
//
//if farmAnimals.isSubset(of: houseAnimals){
//    print("Farm Animals = Subset of House Animals")
//}
//else{
//    print("Farm Animals != Subset of House Animals")
//}
//if farmAnimals.isDisjoint(with: cityAnimals){
//    print("Farm Animals is Disjoint with City Animals")
//}
//else{
//    print("Farm Animals is not Disjoint with City Animals")
//}
//var onlyFarmAnimals : Set = farmAnimals
//onlyFarmAnimals.subtract(houseAnimals)
//print(onlyFarmAnimals)
//var allAnimals : Set = farmAnimals
//allAnimals.formUnion(houseAnimals)
//allAnimals.formUnion(cityAnimals)
    

//var eDic : [String:Int] = [:]
//
//eDic = ["Six":600,"Seven":700]
//eDic["one"] = 100
//eDic["two"] = 200
//var keysarr = ["three","four","five"]
//var val = 300
//for i in keysarr{
//    eDic[i] = val
//    val+=100
//}
//
//print(eDic)






//
//var secretIdentities = ["Hulk":"Bruce Banner","Batman":"Bruce Wayne","Superman":"Clark Kent"]
//print(secretIdentities)

var nestedDict : [String:Any] = ["one":["nestedKey":"nestedValue"],"two":"someValue","three":"anything"]
//print(nestedDict)
for(key, _ ) in nestedDict{
    print("key: \(key)")
}
