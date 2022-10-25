//
//  magus.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

class Magus: Character {
    super.init(
        type: [String] = ["magus"],
        nameOfCharacter: String,
        pointsOfLifeOfCharacter: Int = 200,
        description: String = "Son talent ? Soigner les membres de son équipe",
        weapon: String = "Wand",
        weaponDamages: Int = 20,
        healing: Bool = true) {
            self.type = type
            self.nameOfCharacter = nameOfCharacter
            self.pointsOfLifeOfCharacter = pointsOfLifeOfCharacter
            self.description = description
            self.weapon = weapon
            self.weaponDamages = weaponDamages
            self.healing = healing
        }
}
