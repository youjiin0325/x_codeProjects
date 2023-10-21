//
//  Utility.swift
//  demoProject2
//
//  Created by YOU on 10/20/23.
//

import Foundation

class Utility {
    
    func largerNumbers (_ a: Int, _ b: Int) -> Int {
        if a == b {
            return 0
        }
        return a > b ? a : b
    }
    func isLeapYear(_ year:Int) -> Bool {
        if year % 400 == 0 {return true}
        if year % 100 == 0 {return false}
        return year % 4 == 0
    }
    func pibo(_ n: Int) -> Int{
        if n <= 0 {
            return 0
        }
        
        if n <= 2 {
            return 1
        }
        return pibo(n - 2) + pibo(n - 1)
    }
}
