import UIKit

class Math {
  
  // Greatest common factors (multiple numbers)
  class func GCF(numbers: [Int]) -> Int {
    var index = 0
    var great = 1
    
    while index < numbers.count - 1 {
      if great == 1 {
        great = numbers[index]
      }

      great = Math.GCF(great, numbers[++index])
    }
    
    return great
  }
  
  // Greatest common factors (two numbers)
  class func GCF(a: Int, _ b: Int) -> Int {
    return b == 0 ? a : Math.GCF(b, a % b)
  }
  
  // Lowest common multiples
  class func LCM(numbers: [Int]) -> Int {
    var least = 1

    for number in numbers {
      least = Math.LCM(least, number)
    }
    
    return least
  }
 
  // Lowest common multiples (two numbers)
  class func LCM(a: Int, _ b: Int) -> Int {
    return a * b / Math.GCF([a,b])
  }

  class func Fibonacci(n: Int) -> Int {
    return n < 2 ? n : Math.Fibonacci(n-1) + Math.Fibonacci(n-2)
  }
  
  class func Factorial(n: Int) -> Int {
    return n < 1 ? 1 : n * Factorial(n-1)
  }

  class func Pow(a: Int, _ e: Int) -> Int {
    return e < 1 ? 1 : a * Pow(a, e-1)
  }
  
  class func BinarySearch(key: Int, var _ numbers: [Int]) -> Bool {
    let index = Int(numbers.count / 2)
    
    if index == 0 {
      return false
    } else if numbers[index] == key {
      return true
    } else if numbers[index] > key {
      numbers = Array(numbers[0..<index])
    } else if numbers[index] < key {
      numbers = Array(numbers[index..<numbers.count])
    }

    return BinarySearch(key, numbers)
  }

}
