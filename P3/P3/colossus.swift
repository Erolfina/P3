//
//  colossus.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

final class Colossus: Character {
    init() {
        let characterType = Category.colossus
        let pointsOfLifeOfCharacter: Int = 200
        let description: String = "Imposant et très résistant, mais il ne vous fera pas bien mal."
        let weapon: String = "sword"
        let weaponDamages: Int = 50
        let healing: Bool = false
        super.init(characterType: characterType,
                   pointsOfLifeOfCharacter: pointsOfLifeOfCharacter,
                   description: description,
                   weapon: weapon,
                   weaponDamages: weaponDamages,
                   healing: healing)
    }
}


