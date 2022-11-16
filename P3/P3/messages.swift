//
//  messages.swift
//  P3
//
//  Created by Flore Gridaine on 2022-11-06.
//

import Foundation

final class PrintMessages {
    
    // MARK: Privates Methods
    
    static func chooseYourCharacters() {
        
        print ("""
            Please, choose your hero :
            ⚔️ 1 - Warrior : \(warrior.description) || Points of Life \(warrior.characterPointsOfLife) || Weapon : \(warrior.weapon) || Weapon damages : \(warrior.weaponDamages) || Healing ? \(warrior.healing) ||
            🪄 2 - Magus : \(magus.description) ||
            Points of Life : \(magus.characterPointsOfLife) || Weapon : \(magus.weapon) || Weapon damages : \(magus.weaponDamages) || Healing ? \(magus.healing) ||
            🪓 3 - Dwarf : \(dwarf.description) || Points of Life : \(dwarf.characterPointsOfLife) || Weapon : \(dwarf.weapon) || Weapon damages : \(dwarf.weaponDamages) || Healing ? \(dwarf.healing) ||
            🛡 4 - Colossus : \(colossus.description) || Points of Life : \(colossus.characterPointsOfLife) || Weapon : \(colossus.weapon) || Weapon damages : \(colossus.weaponDamages) || Healing ? \(colossus.healing) ||
""")
    }
    
    static func openingGame() {
        print ("""
🏹Welcome to Battle of Heroes, where two teams of three adventurers will fight to get the title of Heroes!
Let's meet our two opponents!

""")
    }
    
    static func gameReadyToStart (){
        print ("""
Everybody is set up!
Our first opponenent : \(player1.playerName) with their 3 fighters :
- \(player1.playerCharactersName[0]), \(player1.playerCharactersType[0])
- \(player1.playerCharactersName[1]), \(player1.playerCharactersType[1])
- \(player1.playerCharactersName[2]), \(player1.playerCharactersType[2])
With a total of \(player1.getPlayerPointsOfLife()) points of life !

VS

Our second opponenent : \(player2.playerName) with their 3 fighters :
- \(player2.playerCharactersName[0]), \(player2.playerCharactersType[0])
- \(player2.playerCharactersName[1]), \(player2.playerCharactersType[1])
- \(player2.playerCharactersName[2]), \(player2.playerCharactersType[2])
With a total of \(player2.getPlayerPointsOfLife()) points of life !
""")
    }
    
    static func chooseFighter(player: Players) {
        print("""
    
        \(player.playerName) choose your first fighter :
        1.\(player.playerCharactersName[0]), the \(player.playerCharactersType[0]) fighting with a \(player.playerCharactersWeapon[0]) (\(player.playerCharactersWeaponDamages[0]) damages point) and \(player.playerCharactersLife [0]) points of life.
        2.\(player.playerCharactersName[1]), the \(player.playerCharactersType[1]) fighting with a \(player.playerCharactersWeapon[1]) (\(player.playerCharactersWeaponDamages[1]) damages point) and \(player.playerCharactersLife [1]) points of life.
        3.\(player.playerCharactersName[2]), the \(player.playerCharactersType[2]) fighting with a \(player.playerCharactersWeapon[2]) (\(player.playerCharactersWeaponDamages[2]) damages point) and \(player.playerCharactersLife [2]) points of life.
    """)
    }
    
    static func chooseTargetToAttack(player: Players) {
        
        print("""
        Who do you want to fight ?
                1.\(player.playerCharactersName[0]), the \(player.playerCharactersType[0]) fighting with a \(player.playerCharactersWeapon[0]) (\(player.playerCharactersWeaponDamages[0]) damages point) and \(player.playerCharactersLife [0]) points of life.
                2.\(player.playerCharactersName[1]), the \(player.playerCharactersType[1]) fighting with a \(player.playerCharactersWeapon[1]) (\(player.playerCharactersWeaponDamages[1]) damages point) and \(player.playerCharactersLife [1]) points of life.
                3.\(player.playerCharactersName[2]), the \(player.playerCharactersType[2]) fighting with a \(player.playerCharactersWeapon[2]) (\(player.playerCharactersWeaponDamages[2]) damages point) and \(player.playerCharactersLife [2]) points of life.
        
        """)
    }
    
    static func healingOrAttackingChoice() {
        print ("""
    What do you want to do?
    1. Healing?
    2. Attacking ?
    """)
    }
    
    static func chooseTargetToHeal(player: Players) {
        
        print("""
                Who do you want to heal ?
                1.\(player.playerCharactersName[0]), the \(player.playerCharactersType[0]) fighting with a \(player.playerCharactersWeapon[0]) (\(player.playerCharactersWeaponDamages[0]) damages point) and \(player.playerCharactersLife [0]) points of life.
                2.\(player.playerCharactersName[1]), the \(player.playerCharactersType[1]) fighting with a \(player.playerCharactersWeapon[1]) (\(player.playerCharactersWeaponDamages[1]) damages point) and \(player.playerCharactersLife [1]) points of life.
                3.\(player.playerCharactersName[2]), the \(player.playerCharactersType[2]) fighting with a \(player.playerCharactersWeapon[2]) (\(player.playerCharactersWeaponDamages[2]) damages point) and \(player.playerCharactersLife [2]) points of life.
        
        """)
    }
}


