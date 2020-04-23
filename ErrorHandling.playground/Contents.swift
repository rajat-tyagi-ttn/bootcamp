import UIKit


//Question 1:
//
//What is Error Protocol. Create a custom error conforming to error protocol.
//Ans: In Swift, errors are represented by values of types that conform to the Error protocol. This empty protocol indicates that a type can be used for error handling.
enum MyError : Error {
    case noEmail
    case emptyEmail
    case wrongEmail
    
}


//Write a failable initialiser for a class which throws a error  “Object not able to initialise” description a initialisationFailed case, Catch the error and print its error description.
//ans:
enum FirstError : Error {
    case failedInitialization
}

class FirstClass {
    var abc: String?
    
    init?(xyz : String?) throws {
        
        if xyz!.isEmpty {
            throw FirstError.failedInitialization
        } else {
        self.abc = xyz
        }
    }
    
}



do {
    var obj1 = try FirstClass(xyz: "")
} catch FirstError.failedInitialization {
    print("Object not able to Initialize")
}



//
//Question 3:
//
//Explain the difference try, try?, try! , make sure to write a program to explain the difference.
//Ans:
// When using try, our throw function has to be wrapped in a do-catch statement. This allows us to customize our error handling and perform specific actions based on the error.

enum SecondError : Error {
    case initialisation
}

class SecondClass {
    var abc: String?
    
    init?(xyz : String?) throws {
        
        if xyz!.isEmpty {
            throw SecondError.initialisation
        } else {
        self.abc = xyz
        }
    }
    
}



do {
    var obj1 = try SecondClass(xyz: "")
} catch SecondError.initialisation {
    print("Object Not Initialized")
}


// try? let’s us ignore our error and allow them to become nil whenever our function throws them. For this reason, we do not have to wrap our code in a do-catch statement
 var obj2 = try? SecondClass(xyz: "")



//try! is used when we know there is no possible way our method will fail, or if this line of code is so fundamental that our whole app might as well crash if there is in fact an error
var obj3 = try! SecondClass(xyz: "Hello")



//4)
//Write a program which loads the data from a datasource of 10 employees looks like below, Program would help to give salary bonus to employees. Which is based on some conditions but if employee is not able to satisfy the condition program should throw the error with specific error condition and its description should be printed.
//
//
//
//Conditions -
//
//Employee should be present on the day.
//
//Employee has completed a year with company
//
//Employee competency should be hot competency like ios, android, bigdata, AI etc. ( make some placeholder competency which would not get bonus )
//
//Employee should have a attendance percent over 80.
//
//Emp -
//
//empID
//
//empName
//
//empEmail
//
//joiningDate
//
//isPresent
//
//competency
//
//attendancePercent
//
//
//
//Test Run:
//
//let bonusProgram = BonusProgram()
//
//bonusProgram.allowedForBonus("muskaan@tothenew.com")
//
//bonusProgram.allowedForBonus("mithlesh@tothenew.com")
//
//bonusProgram.allowedForBonus("ankit@tothenew.com")
//
//bonusProgram.allowedForBonus("sachin@tothenew.com")
//
//bonusProgram.allowedForBonus("Merry@tothenew.com")
//
//.... few more run-
//
//// prints
//
//Muskaan is absent today.
//
//Mithlesh competency does not fall under bonus program.
//
//ankit is eligible for bonus.
//
//sachin has joined us on dd/mm/yyyy and still to complete a year with us.
//
//Merry is eligible for bonus.


struct employee{
    var empID: Int
    var empName: String
    var empEmail: String
    var joiningDate: String
    var isPresent: String
    var competency: String
    var attendancePercent: String
}
var arr : [employee] = [employee(empID: 1, empName: "Sachin", empEmail: "sachin@tothenew", joiningDate: "01/08/2019", isPresent: "Yes", competency: "IOS", attendancePercent: "94"),
employee(empID: 2, empName: "Muskan", empEmail: "muskan@tothenew", joiningDate: "22/08/2017", isPresent: "No", competency: "IOS", attendancePercent: "94"),
employee(empID: 3, empName: "Mithilesh", empEmail: "mithilesh@tothenew", joiningDate: "22/08/2017", isPresent: "Yes", competency: "FEEN", attendancePercent: "94"),
employee(empID: 4, empName: "Ankit", empEmail: "ankit@tothenew", joiningDate: "22/08/2017", isPresent: "Yes", competency: "IOS", attendancePercent: "94"),
employee(empID: 5, empName: "Marry", empEmail: "marry@tothenew", joiningDate: "22/08/2017", isPresent: "Yes", competency: "IOS", attendancePercent: "94")]

enum problem{
    case Joining
    case Present
    case Competency
    case Allowed
}

class Calculate
{
    func isAllowedForBonus (email: String) -> String
        {
            var ans : String = ""
            var emp : employee
            for i in arr
            {
                
                let cal = Calculate()
                if email == i.empEmail
                {
//                    emp.attendancePercent = i.attendancePercent
//                    emp.competency = i.competency
//                    emp.empEmail = i.empEmail
//                    emp.empID = i.empID
//                    emp.empName = i.empName
//                    emp.isPresent = i.isPresent
                    emp.self = i.self
                    if emp.isPresent == "No"
                    {
                        let prb : problem = problem.Present
                        ans = cal.check(arg: prb, emp: emp)
                    }
                    else if emp.competency != "IOS"
                    {
                        let prb : problem = problem.Competency
                        ans = cal.check(arg: prb, emp: emp)
                    }
                    else if emp.joiningDate <= "04/03/2019"
                    {
                        let prb : problem = problem.Joining
                        ans = cal.check(arg: prb, emp: emp)
                    }
                    else
                    {
                        let prb : problem = problem.Allowed
                        ans = cal.check(arg: prb, emp: emp)
                    }
                }
            }
            return ans
        }
func check (arg : problem , emp: employee) -> String
{
    switch arg{
    case .Joining:
        return ("\(emp.empName) has joined us on \(emp.joiningDate) and is still to complete one year")
    case .Present:
        return ("\(emp.empName) is absent today")
    case .Competency:
        return ("\(emp.empName) competency does not fall under the bonus program")
    case .Allowed:
        return ("\(emp.empName) is eligible for bonus")
    }
}
}
var check = Calculate()
print(check.isAllowedForBonus(email: "muskan@tothenew"))
print(check.isAllowedForBonus(email: "mithilesh@tothenew"))
print(check.isAllowedForBonus(email: "ankit@tothenew"))
print(check.isAllowedForBonus(email: "sachin@tothenew"))
print(check.isAllowedForBonus(email: "marry@tothenew"))
