import UIKit

//var str = "Hello, playground"

func siftBeans(fromGroceryList : [String]) -> (beans : [String], otherGroceries : [String]){
    var beans = [String]()
    var otherGroceries = [String]()
    
    for elem in fromGroceryList{
        if elem.hasSuffix("beans"){
            beans.append(elem)
        }
        else{
            otherGroceries.append(elem)
        }
    }
    return (beans, otherGroceries)
}

let result = siftBeans(fromGroceryList: ["green beans",

                                        "milk",

                                        "black beans",

                                        "pinto beans",

                                        "apples"])

result.beans
result.otherGroceries


enum Operations{
    case add(Double,Double)
    case subtract(Double,Double)
    case multiply(Double,Double)
    case divide(Double,Double)
    case squareroot(Double)
}

class Calculator{
    
    func equals(_ operation: Operations ) -> Double{
        
        switch operation{
            
            case .add(let num1, let num2):
                return num1 + num2
                
            case .subtract(let num1, let num2):
                return num1 - num2
                
            case .multiply(let num1, let num2):
                return num1 * num2
            
            case .divide(let num1, let num2):
                return num1/num2
            
            case .squareroot(let num1):
                return num1.squareRoot()
        }
    }
}
    
var c = Calculator()
c.equals(Operations.add(2, 3))
c.equals(Operations.subtract(7, 3))
c.equals(Operations.multiply(45, 3))
c.equals(Operations.divide(75, 3))
c.equals(Operations.squareroot(81))

struct Operation {
    

    static var addClosure : ((Double,Double?) -> Double) = {(_ num1 : Double, _ num2 : Double?) -> Double in
        return num1 + num2!
    }

    static var subtractClosure : ((Double,Double?) -> Double) = {(_ num1 : Double, _ num2 : Double?) -> Double in
        return num1 - num2!
    }

    static var multiplyClosure : ((Double,Double?) -> Double) = {(_ num1 : Double, _ num2 : Double?) -> Double in
        return num1 * num2!
    }

    static var divideClosure : ((Double,Double?) -> Double) = {(_ num1 : Double, _ num2 : Double?) -> Double in
        return num1 / num2!
    }

    static var squareRootClosure : ((Double,Double?) -> Double) = {(_ num1 : Double,_ num2 : Double?) -> Double in
        return num1.squareRoot()
    }
}
 
class Calc{
    
    func equal(_ number1 : Double, _ number2 : Double?, _ oper : (Double,Double?) -> Double) -> Double{
        if number2 != nil{
            return oper(number1,number2!)
        }
        else{
            return oper(number1,nil)
        }
        
    }
}

var ca = Calc()

ca.equal(2, 6, Operation.addClosure)
ca.equal(14, 7, Operation.subtractClosure)
ca.equal(3, 50, Operation.multiplyClosure)
ca.equal(12, 3, Operation.divideClosure)
ca.equal(81, nil, Operation.squareRootClosure)





