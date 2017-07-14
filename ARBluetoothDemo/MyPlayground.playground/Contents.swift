//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(UInt16.max, UInt8.max,0xffff)
func test1 (_ compare : Int) -> (Int) -> Bool {
    return {
        $0 > compare
    }
}
test1(1)(9)
