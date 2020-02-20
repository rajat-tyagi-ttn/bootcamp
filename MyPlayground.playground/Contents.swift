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
//for(key, _ ) in nestedDict{
//    print("key: \(key)")
//}



enum country:String{
    case america,india,britain,japan,china,defaultCountry
}
enum department:String{
    case ios,android,jvm,fullStack,web,defaultDepartment
}
enum branch:String{
    case america,india,britain,japan,china,defaultBranch
}

struct EmployeePersonal{
    var employeeId : Int
    var name : String
    var Country = country.defaultCountry
    var address : String
    var hobbies : String?
}

struct EmployeeProfessional{
    var employeeId : Int
    var name : String
    var Department = department.defaultDepartment
    var Branch = branch.defaultBranch
    var experience : Int
}

struct Employee{
    var employeeId : Int
    var name : String
    
    var Country = country.defaultCountry
    var address : String
    var hobbies : String?

   var Department = department.defaultDepartment
  
   var Branch = branch.defaultBranch
   var experience : Int
}


var personalArray : [EmployeePersonal] = [EmployeePersonal(employeeId: 1, name: "Rajat", Country: .india, address: "XYZ", hobbies: "Coding"),
                    EmployeePersonal(employeeId: 3, name: "Anupam", Country: .japan, address: "ABC", hobbies: "Reading"),
                    EmployeePersonal(employeeId: 2, name: "Sreyansh", Country: .india, address: "QWE", hobbies: nil),
                    EmployeePersonal(employeeId: 4, name: "Subarno", Country: .britain, address: "VCX", hobbies: "Cricket"),
                    EmployeePersonal(employeeId: 8, name: "Nilesh", Country: .america, address: "LKJH", hobbies: "Tennis"),]

var professionalArray : [EmployeeProfessional] = [EmployeeProfessional(employeeId: 2, name: "Sreyansh", Department: .ios, Branch: .japan,                        experience:4),
                        EmployeeProfessional(employeeId: 4, name: "Subarno", Department: .android, Branch: .japan, experience:5),
                        EmployeeProfessional(employeeId: 1, name: "Rajat", Department: .ios, Branch: .japan, experience:5),
                        EmployeeProfessional(employeeId: 3, name: "Anupam", Department: .jvm, Branch: .america, experience:2),
                        EmployeeProfessional(employeeId: 8, name: "Nilesh", Department: .fullStack, Branch: .india, experience:4),]

var thirdArray : [Employee] = []

for personalItem in personalArray{
    for profesionalItem in professionalArray{
        
        if personalItem.employeeId == profesionalItem.employeeId{
            var tempEmployee : Employee = Employee(employeeId: personalItem.employeeId, name: personalItem.name,Country: personalItem.Country, address: personalItem.address, hobbies: personalItem.hobbies, Department: profesionalItem.Department,Branch: profesionalItem.Branch, experience: profesionalItem.experience)
            thirdArray.append(tempEmployee)
        }
    }
}
//for ele in thirdArray{
//    print(ele.name)
//}






//var dp = "ios"
//func dept(emp : [EmployeeProfessional], dptmt : String){
//    for item in emp{
//        if item.Department.rawValue==dptmt{
//            print(item)
//        }
//    }
//}
//dept(emp: professionalArray, dptmt: dp)



//func sameCountry(emp:[Employee]){
//    for  i in 0...emp.count-1{
//
//        for  j in 0...emp.count-1{
//
//            if emp[i].employeeId == emp[j].employeeId{
//                continue
//            }
//            else{
//                if emp[i].Country == emp[j].Country && emp[i].Branch == emp[j].Branch{
//                    print("Employee with same country : \(emp[i].Country) and same Branch : \(emp[i].Branch) are :")
//                    print(emp[i].name)
//                    print(emp[j].name)
//
//                }
//            }
//
//        }
//
//    }
//}
//
//sameCountry(emp: thirdArray)



//func hobExp(emp : [Employee]){
//    for item in emp{
//        if item.hobbies != nil{
//            print("Name : \(item.name) and Experience \(item.experience)")
//        }
//    }
//}
//
//hobExp(emp: thirdArray)

func startWithS(emp : [EmployeePersonal]){
    for item in emp{
        if item.name.starts(with: "S"){
            print(item.name)
        }
    }
}

startWithS(emp: personalArray)
