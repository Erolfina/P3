//
//  character.swift
//  P3
//
//  Created by Flore Gridaine on 2022-11-04.
//

import Foundation

enum Category {
    case colossus
    case dwarf
    case magus
    case warrior
}

class Character {

let characterType: Category
let nameOfCharacter: String
let pointsOfLifeOfCharacter: Int
let description: String
let weapon: String
let weaponDamages: Int
let healing: Bool
    
    init(characterType: Category,nameOfCharacter: String, pointsOfLifeOfCharacter: Int, description: String, weapon: String, weaponDamages: Int, healing: Bool){
        self.characterType = characterType
        self.nameOfCharacter = nameOfCharacter
        self.pointsOfLifeOfCharacter = pointsOfLifeOfCharacter
        self.description = description
        self.weapon = weapon
        self.weaponDamages = weaponDamages
        self.healing = healing
    }
    
    func chooseYourCharacters(){
        messages.messageChooseYourCharacters()
   
        switch characterType {
        case .warrior:
            print ("What's the name of this warrior?")
            //func choose name of warrior
        case .magus:
            print ("What's the name of this magus?")
            //func choose name of warrior
        case .dwarf:
            print ("What's the name of this dwarf?")
            //func choose name of warrior
        case .colossus:
            print ("What's the name of this colossus?")
            //func choose name of warrior
       
        }
     }
    
    
}

