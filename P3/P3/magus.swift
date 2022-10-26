//
//  magus.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

class Magus: Character {
    init(){
        var characterType = Category.magus
        var nameOfCharacter: String
        var pointsOfLifeOfCharacter: Int = 200
        var description: String = "Son talent ? Soigner les membres de son équipe"
        var weapon: String = "Wand"
        var weaponDamages: Int = 20
        var healing: Bool = true
            super.init(characterType: characterType,
                       nameOfCharacter: nameOfCharacter,
                       pointsOfLifeOfCharacter: pointsOfLifeOfCharacter,
                       description: description,
                       weapon: weapon,
                       weaponDamages: weaponDamages,
                       healing: healing)
        }
    
   
    
    
}
