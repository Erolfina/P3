//
//  messages.swift
//  P3
//
//  Created by Flore Gridaine on 2022-11-06.
//

import Foundation

class Messages {
    
    
    func messageChooseYourCharacters(){
        
        
        print ("""
            Please, choose your first hero :
            ⚔️ 1 - Warrior : \(warrior.description)
            Points of Life : \(warrior.pointsOfLifeOfCharacter)
            Weapon : \(warrior.weapon)
            Weapon damages : \(warrior.weaponDamages)
            Healing ? \(warrior.healing)
            🪄 2 - Magus : \(magus.description)
            Points of Life : \(magus.pointsOfLifeOfCharacter)
            Weapon : \(magus.weapon)
            Weapon damages : \(magus.weaponDamages)
            Healing ? \(magus.healing)
            🪓 3 - Dwarf : \(dwarf.description)
            Points of Life : \(dwarf.pointsOfLifeOfCharacter)
            Weapon : \(dwarf.weapon)
            Weapon damages : \(dwarf.weaponDamages)
            Healing ? \(dwarf.healing)
            🛡 4 - Colossus : \(colossus.description)
            Points of Life : \(colossus.pointsOfLifeOfCharacter)
            Weapon : \(colossus.weapon)
            Weapon damages : \(colossus.weaponDamages)
            Healing ? \(colossus.healing)
""")
    }
}


