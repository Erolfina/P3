//
//  colossus.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

class Colossus: Character {
    init(){
        var characterType= Category.colossus
        var nameOfCharacter: String
        var pointsOfLifeOfCharacter: Int = 200
        var description: String = "Imposant et très résistant, mais il ne vous fera pas bien mal."
        var weapon: String = "sword"
        var weaponDamages: Int = 50
        var healing: Bool = false
        super.init(characterType: characterType,
                   nameOfCharacter: nameOfCharacter,
                   pointsOfLifeOfCharacter: pointsOfLifeOfCharacter,
                   description: description,
                   weapon: weapon,
                   weaponDamages: weaponDamages,
                   healing: healing)
    }
}


