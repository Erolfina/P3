//
//  main.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-24.
//

import Foundation

var colossus = Colossus()
var magus = Magus()
var dwarf = Dwarf()
var warrior = Warrior()
var character = Character(characterType: .dwarf, nameOfCharacter: "Bob", pointsOfLifeOfCharacter: 150, description: "aya!", weapon: "stick", weaponDamages: 70)

character.namingCharacter()

