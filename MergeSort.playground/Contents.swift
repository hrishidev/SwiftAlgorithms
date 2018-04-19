
import Foundation


func mergeSort (_ array : [Int]) -> [Int] {
    
    
    guard array.count > 1
        else {
            return array
    }
    let leftArray = Array(array[0 ..< array.count/2 ])
    let rightArray = Array( array[array.count/2 ..< array.count])
    
    return merge(leftArray:mergeSort(leftArray), rightArray: mergeSort(rightArray))
}


func merge( leftArray: [Int] , rightArray : [Int] ) -> [Int] {
    
    var mergedArray = [Int]()
    var left = leftArray
    var right = rightArray
    
    while left.count > 0 && right.count > 0 {
    
        if left.first! < right.first! {
            mergedArray.append(left.removeFirst())
        }
        else {
            mergedArray.append(right.removeFirst())
        }
    }
    return mergedArray + left + right
}


let unsortedArray = [ 10 ,5 , 56 ,21, 4, -1 , 45 ,22, 67]

print(mergeSort(unsortedArray))
