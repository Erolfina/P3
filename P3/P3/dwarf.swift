//
//  dwarf.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

final class Dwarf: Character{
    init(){
        let characterType: String = "Dwarf"
        let characterPointsOfLife: Int = 75
        let description: String = "Sa hache vous infligera beaucoup de dégâts, mais il n'a pas beaucoup de points de vie"
        let weapon: String = "Axe"
        let weaponDamages: Int = 30
        let healing: Bool = false
            super.init(characterType: characterType,
                   characterPointsOfLife: characterPointsOfLife,
                   description: description,
                   weapon: weapon,
                   weaponDamages: weaponDamages,
                   healing: healing)
        }
}
