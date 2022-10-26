//
//  dwarf.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

class Dwarf: Character{
    init(){
        var characterType: [String] = ["dwarf"]
        var nameOfCharacter: String
        var pointsOfLifeOfCharacter: Int = 50
        var description: String = "Sa hache vous infligera beaucoup de dégâts, mais il n'a pas beaucoup de points de vie"
        var weapon: String = "Axe"
        var weaponDamages: Int = 100
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
