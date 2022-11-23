//
//  warrior.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

final class Warrior: Character {
    init(){
        let type: String = "Warrior"
        let characterPointsOfLife: Int = 100
        let description: String = "L'attaquant classique. Un bon guerrier !"
        let weapon: String = "Sword"
        let weaponDamages: Int = 20
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

