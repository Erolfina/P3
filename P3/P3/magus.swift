//
//  magus.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

 final class Magus: Character {
    init(){
        let characterType : String = "Magus"
        let characterPointsOfLife: Int = 200
        let description: String = "Son talent ? Soigner les membres de son équipe"
        let weapon: String = "Wand"
        let weaponDamages: Int = 5
        let healingPoints: Int = 35
        let healing: Bool = true
            super.init(characterType: characterType,
                       characterPointsOfLife: characterPointsOfLife,
                       description: description,
                       weapon: weapon,
                       weaponDamages: weaponDamages,
                       healing: healing,
                       healingPoints: healingPoints)
        }
}
