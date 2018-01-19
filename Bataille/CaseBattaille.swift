//
//  CaseBattaille.swift
//  Bataille
//
//  Created by Jeremy IGONIN on 19/01/2018.
//

import Foundation


enum CaseState {
    case white
    case red }

struct CasePosition: Hashable {
    var hashValue: Int
    let line: Int // 0..<10
    let column: Character // A, B...
    
    static func ==(lhs: CasePosition, rhs: CasePosition) -> Bool {
        if case lhs.hashValue = rhs.hashValue {
            return true
        }
        else {
            return false
        }
    }  
}
