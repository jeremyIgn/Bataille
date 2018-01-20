//
//  main.swift
//  Bataille
//
//  Created by Jeremy IGONIN on 19/01/2018.
//

import Foundation

print("Hello, World!")

var laCarteOceanMain:CarteOcean=CarteOcean()
let columns:[Character]=["A","B","C","D","E"]


for eachCol in columns{
    var hash: Int = 0
    for eachLine in 0..<5{
        laCarteOceanMain.carte.append(CasePosition(hashValue: hash, line: eachLine, column: eachCol))
        hash = hash + 1
    }
}

for element in laCarteOceanMain.carte{
    print(element.column, element.line)
}
