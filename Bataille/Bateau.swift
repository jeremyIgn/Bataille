//
//  Bateau.swift
//  Bataille
//
//  Created by Jeremy IGONIN on 19/01/2018.
//

import Foundation

struct Ship {
    let cases: [CasePosition]
    let striked: Bool = false
    func length() -> Int {
        return cases.count
    }
    func isAt(casePosition: CasePosition) -> Bool {
        var bool: Bool = false
        for laCase in cases{
            if (laCase == casePosition){
                bool = true
            }
        }
        return bool
    }
}
