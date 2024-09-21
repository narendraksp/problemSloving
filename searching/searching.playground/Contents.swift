import UIKit

var greeting = "Hello, playground"

func margesort(arry:[Int]) -> [Int]{
    guard arry.count > 1 else {
        return arry
    }
    
    
    let leftArry  = Array(arry[0..<arry.count/2])
        let rightArray  = Array(arry[arry.count/2..<arry.count])
        
    return margerARRY(leftA: margesort(arry: leftArry), rightA: margesort(arry:rightArray))
}

func margerARRY(leftA:[Int], rightA:[Int])->[Int]{
    
    var right = rightA
    var lift = leftA
    var  arry:[Int] = Array()
    while lift.count > 0 && right.count > 0 {
        if lift.first! > right.first! {
            arry.append(right.removeFirst())
            
        }else{
            arry.append(lift.removeFirst())
            
            
        }
    }
    return arry + right + lift
    
}
let arrr = [3,5,9,1,4]
let nn = margesort(arry: arrr)
print(nn)
