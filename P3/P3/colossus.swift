//
//  colossus.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

final class Colossus: Character {
    init() {
        let type: String = "Colossus"
        let characterPointsOfLife: Int = 200
        let description: String = "Imposant et très résistant, mais il ne vous fera pas bien mal."
        let weapon: String = "sword"
        let weaponDamages: Int = 10
        let healing: Bool = false
        let healingPoints: Int = 0
        super.init(type: type,
                   characterPointsOfLife: characterPointsOfLife,
                   description: description,
                   weapon: weapon,
                   weaponDamages: weaponDamages,
                   healing: healing,
                   healingPoints: healingPoints)
    }
}


