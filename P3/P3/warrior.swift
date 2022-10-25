//
//  warrior.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

class Warrior: Character {
    super.init(
        type: [String] = ["warrior"],
        nameOfCharacter: String,
        pointsOfLifeOfCharacter: Int = 75,
        description: String = "L'attaquant classique. Un bon guerrier !",
        weapon: String = "Sword",
        weaponDamages: Int = 75,
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
