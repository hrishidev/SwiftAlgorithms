//: Playground - noun: a place where people can play

import UIKit

func quickSort (_ inputArray : [Int]) -> [Int] {
    
    guard inputArray.count > 1 else {
        return inputArray
    }
    
    let pivot = inputArray[inputArray.count/2]
    
    var leftArray = [Int]()
    var rightArray = [Int]()
    var equalArray = [Int]()
    
    
    for element in inputArray {
        
        if element == pivot {
            equalArray.append(element)
            continue
        }
        if element > pivot {
            rightArray.append(element)
            continue
        }
        if element < pivot {
            leftArray.append(element)
        }
        
    }
    return quickSort(leftArray) + equalArray + quickSort( rightArray)
}


let unsortedArray = [ 10 ,5 , 56 ,21, 4, -1 , 45 ,22, 67]

print(quickSort(unsortedArray))

