import UIKit

//var greeting = "Hello, playground"



//merge sort
func mergesort(list:[Int]) -> [Int]{
    guard list.count > 1 else {
        return list
    }
    let arryA = Array(list[0..<list.count/2])
    let arryb = Array(list[list.count/2..<list.count])
    print(arryA)
    return mergeAB(A: mergesort(list: arryA), B: mergesort(list: arryb))
    
}
func mergeAB(A:[Int],B:[Int]) -> [Int]{
    var arryA =  A
    var arryB =  B
    var newArry:[Int] = Array()
    while arryA.count > 0 && arryB.count > 0 {
        
        if arryA.first! > arryB.first! {
            newArry.append(arryB.removeFirst())
            
        } else {
            newArry.append(arryA.removeFirst())

            
            
        }
        
        
        
    }
    return newArry + arryA + arryB
}
//
//    
let bbe = mergesort(list: [10,2,1,0,1,5,6,7,9,1])

print(bbe)


func bubleSort(list:inout [Int]) {
  let n =  list.count
    
    for i in 0..<n{
        print("load:\(i)")
        
        for  j in 0..<(n - i - 1){
            if list[j] > list[j + 1]{
                let tem = list[j]
                list[j] = list[j + 1]
                list[j + 1] = tem
 
                
            }
            
        }
    }
}


var arryb = [1,56,8,9,0,4,6,8]
bubleSort(list: &arryb)
print(arryb)

func quickSort(num:[Int]) -> [Int]{
    guard num.count > 1 else {
        return num
    }


    let  priot = num[num.count/2]
    var arryLess = Array<Int>()
    var arryMore = Array<Int>()
    var equal = Array<Int>()
    for i in num {
        if priot == i {
            equal.append(i)
            
        }else if priot > i {
            arryLess.append(i)

        } else {
            arryMore.append(i)
            
        }
        
        
        
    }
    
    return quickSort(num: arryLess) + equal + quickSort(num: arryMore)
    
    
}
var arry = [1,56,8,9,0,4,6,8,4,9, 10]
let numm = quickSort(num: arry)
print(numm)




func countstort(array:[Int]) -> [Int]{
    var min:Int = array.first!
    var max:Int = array.first!
    var dict :Dictionary = Dictionary<Int, Int>()
    for num in  array {
        if min > num {
            
            min = num
        }else if max < num {
            
            
            max = num
        }
        
        if let countt = dict[num] {
            
            dict[num] = countt + 1
        }else {
            dict[num] =  1
        }
    }
    var aeeeNew:[Int] = Array()
    for i in min...max{
        
        if let num =  dict[i], num > 0 {
            
            var countArray = [Int](repeating: i, count: num)
            
            aeeeNew =   aeeeNew + countArray
        }
        
    }
    print(max)
    print(min)
    return aeeeNew
}



func inserstionSort(array:inout [Int]){
    
    for i in 1..<array.count{
        var j = i - 1
        let k  = array[i]
        
        while j>=0 && array[j]>k {
            
            array[j+1] = array[j]
            
            j = j - 1
        }
        array[j + 1] = k
        
        
        
    }
    
    
    
}
var sortArry = [9,1,5,8,4,1]
inserstionSort(array: &sortArry)
print(sortArry)


func selectionQuick(arrayq:inout [Int]){
    
    for i in 0..<arrayq.count{
        
        var midtime = i
        
        for j in (i + 1)..<arrayq.count{
            
            if arrayq[j] < arrayq[midtime]{
                midtime = j
                
            }
        }
        
        if i != midtime {
            arrayq.swapAt(i, midtime)
        }

    }
    
}
var sortArry2 = [10,9,1,5,8,4,1]
selectionQuick(arrayq: &sortArry2)
print(sortArry2)
