//
//  CarteOcéan.swift
//  Bataille
//
//  Created by Jeremy IGONIN on 19/01/2018.
//

import Foundation




class CarteOcean{
    var columns:[Character]=["A","B","C","D","E"]
    var gameBoard: [CasePosition]=[]
    var shipList:[Ship]=[]


func loadCasesOnMap(){
    for eachCol in columns{
        var hash: Int = 0
        for eachLine in 0..<6{
            gameBoard.append(CasePosition(hashValue: hash, line: eachLine, column: eachCol))
            hash = hash + 1
        }
    }
}

func displayBoard() {    
    for element in gameBoard{
        print(element.column, element.line)
    }
    
}

func addShipOnGameBoard(sizeShip:Int)->Bool{
    let random:UInt32 = arc4random()
    var indexForHashValue:UInt32 = 1 + random % 6
    var indexForLine: UInt32 = 1 + random % 6
    var indexForCharacter:Int = Int(1 + random % 6)
    var col:Character = columns[indexForCharacter]
    var casesOfNewShip:[CasePosition]=[]
    for index in 0..<sizeShip{
        var newCasePosition:CasePosition=CasePosition(hashValue: Int(indexForHashValue), line: Int(indexForLine), column:col)
        casesOfNewShip.append(newCasePosition)
        indexForCharacter+=1
        indexForLine+=1
        indexForHashValue+=1
    }
    let newShip:Ship=Ship(cases: casesOfNewShip)
    shipList.append(newShip)
    
    return false
}
func isShipEntirelyStriked(ship: Ship, gameBoard: [CasePosition: CaseState])-> Bool {
        return false
}
func isGameEnded(ships: [Ship]) -> Bool {
    return false
}

}
