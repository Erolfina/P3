//
//  warrior.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

final class Warrior: Character {
    init(){
        let characterType: String = "Warrior"
        let characterPointsOfLife: Int = 100
        let description: String = "L'attaquant classique. Un bon guerrier !"
        let weapon: String = "Sword"
        let weaponDamages: Int = 20
        let healing: Bool = false
            super.init(characterType: characterType,
                       characterPointsOfLife: characterPointsOfLife,
                   description: description,
                   weapon: weapon,
                   weaponDamages: weaponDamages,
                   healing: healing)
    }
    }

