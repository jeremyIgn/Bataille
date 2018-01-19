//
//  Case.swift
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
    
    static func ==(lhs: CasePosition, rhs: CasePosition) -> Bool {
        if(line==lhs && column == rhs){
            return true
        }
        else{
            return false
        }
    }
    
    let line: Int // 0..<10
    let column: Character // A, B...
}
