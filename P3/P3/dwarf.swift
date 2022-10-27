//
//  dwarf.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

class Dwarf: Character{
    init(){
        let characterType = Category.dwarf
        let nameOfCharacter: [String] = []
        let pointsOfLifeOfCharacter: Int = 50
        let description: String = "Sa hache vous infligera beaucoup de dégâts, mais il n'a pas beaucoup de points de vie"
        let weapon: String = "Axe"
        let weaponDamages: Int = 100
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
