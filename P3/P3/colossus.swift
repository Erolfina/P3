//
//  colossus.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

class Colossus: Character {
    init(){
        let characterType = Category.colossus
        let nameOfCharacter: [String] = []
        let pointsOfLifeOfCharacter: Int = 200
        let description: String = "Imposant et très résistant, mais il ne vous fera pas bien mal."
        let weapon: String = "sword"
        let weaponDamages: Int = 50
        let healing: Bool = false
        super.init(characterType: characterType,
                   nameOfCharacter: nameOfCharacter,
                   pointsOfLifeOfCharacter: pointsOfLifeOfCharacter,
                   description: description,
                   weapon: weapon,
                   weaponDamages: weaponDamages,
                   healing: healing)
    }
}


