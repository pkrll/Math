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

}
