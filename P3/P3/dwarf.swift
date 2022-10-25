//
//  dwarf.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

class Dwarf: Character{
    super.init(
        type: [String] = ["dwarf",],
        nameOfCharacter: String,
        pointsOfLifeOfCharacter: Int = 50,
        description: String = "Sa hache vous infligera beaucoup de dégâts, mais il n'a pas beaucoup de points de vie",
        weapon: String = "Axe",
        weaponDamages: Int = 100,
        healing: Bool = false) {
            self.type = type
            self.nameOfCharacter = nameOfCharacter
            self.pointsOfLifeOfCharacter = pointsOfLifeOfCharacter
            self.description = description
            self.weapon = weapon
            self.weaponDamages = weaponDamages
            self.healing = healing
        }
}
