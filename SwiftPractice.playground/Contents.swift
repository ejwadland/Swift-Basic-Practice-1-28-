import UIKit

// Sum of two integers. If the values are equal return the triple of their sum.

func tripleSum(a: Int, b: Int) -> Int {
    if a == b {
        return (a + b) * 3
    } else {
        return (a + b)
    }
}

// Return the absolute difference of n and 51, if n is over 51 return double the absolute difference

func absDiff(a: Int) -> Int {
    if a < 51 {
        return 51 - a
    } else {
        return (a - 51) * 2
    }
}

// Program accepts two integer values and returns true if one of them or their sum is 20

func twoInt(a: Int, b: Int) -> Bool {
    if a == 20 || b == 20 || a + b == 20 {
        return true
    } else {
        return false
    }
}

// Program accepts two integer values and returns true if one is negative and one is positive.
// Also returns true only if both are negative.

func posNeg(a: Int, b: Int) -> Bool {
    if (a < 0 && b > 0) || (a > 0 && b < 0) || (a < 0 && b < 0) {
        return true
    } else {
        return false
    }
}

// Add "Is" to the front of a given string. If string already begins with "Is", return given string

func addIs(str: String) -> String {
    if str.hasPrefix("Is") {
        return str
    } else {
        return "Is \(str)"
    }
}

// Remove a character at a specific index of a given non-empty string. The value of the specified index will be in the range 0 - str.length()-1

func removeCharAt(a: String, ind: Int) -> String {
    let count = a.count
    var newWord = a
    let index = a.index(a.startIndex, offsetBy: ind)
    if count > 0 {
        newWord.remove(at: index)
    }
    
    return newWord
}

// Change the first and last characters of a given string

func reverseChar(str: String) -> String {
    
    var newStr = str
    
    let firstChar = String(newStr.prefix(1))
    let lastChar = String(newStr.suffix(1))
    
    let first1 = Character(firstChar)
    let last1 = Character(lastChar)
    
    newStr.removeFirst()
    newStr.removeLast()
    
    newStr.insert(last1, at: newStr.startIndex)
    newStr.insert(first1, at: newStr.endIndex)
    
    return newStr
}

// Add the last character from a given string at the front and back of given string

func frontBack(str: String) -> String {
    
    var newStr = str
    
    let lastChar = String(newStr.suffix(1))
    
    let last1 = Character(lastChar)
    
    newStr.insert(last1, at: newStr.startIndex)
    newStr.insert(last1, at: newStr.endIndex)
    
    return newStr
}

// Check if a non-negative number is a multiple of 3 or a multiple of 5

func mulOf(a: Int) -> String {
    while a > 0 {
        if a % 3 == 0 && a % 5 == 0 {
            return "\(a) is a multiple of 3 and 5!"
        } else if a % 3 == 0 {
            return "\(a) is a multiple of 3!"
        } else if a % 5 == 0 {
            return "\(a) is a multiple of 5!"
        } else {
            return "\(a) is neither a multiple of 3 or 5"
        }
    }
    return "Number out of bounds"
}

// Takes the first two characters from a given string and creates a new string with these characters added at both the front and back

func firstTwo(str: String) -> String {
    let newStr = str
    let first2 = newStr.prefix(2)
    let final = String(first2)
    
    return final + str + final
}
