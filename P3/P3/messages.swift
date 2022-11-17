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
""")
        for index in 0..<player1.playerCharactersName.count{
            print ("""
- \(player1.playerCharactersName[index]), \(player1.playerCharactersType[index])
""")
        }
        print ("""
With a total of \(player1.setupPlayerPointsOfLife()) points of life !

VS

Our second opponenent : \(player2.playerName) with their 3 fighters :
""")
        for index in 0..<player2.playerCharactersName.count{
            print ("""
 - \(player2.playerCharactersName[index]), \(player2.playerCharactersType[index])
 """)
        }
        print ("With a total of \(player2.setupPlayerPointsOfLife()) points of life !")
        
    }
    
    static func chooseFighter(player: Players) { //integrer fucntion de calcul de vue du character
        print("\(player.playerName) choose your first fighter :")
        
        for index in 0..<player.playerCharactersName.count{ //check if the fighter is alive
            if player.playerCharactersLife[index] > 0 {
                print("""
                \(index+1).\(player.playerCharactersName[index]), the \(player.playerCharactersType[index]) fighting with a \(player.playerCharactersWeapon[index]) (\(player.playerCharactersWeaponDamages[index]) damages point) and \(player.playerCharactersLife[index]) points of life.
                """)
            }
        }
    }
    
    static func chooseTargetToAttack(player: Players) { //integrer fucntion de calcul de vue du character
        print("Who do you want to fight ?")
        
        for index in 0..<player.playerCharactersName.count{
            if player.playerCharactersLife[index] > 0 { //check if the target is alive
            }
            print("""
                     \(index+1). \(player.playerCharactersName[index]), the \(player.playerCharactersType[index]) fighting with a \(player.playerCharactersWeapon[index]) (\(player.playerCharactersWeaponDamages[index]) damages point) and \(player.playerCharactersLife [index]) points of life.
        """)
        }
    }
    
    static func healingOrAttackingChoice() {
        print ("""
    What do you want to do?
    1. Healing?
    2. Attacking ?
    """)
    }
    
    static func chooseTargetToHeal(player: Players) { //integrer fucntion de calcul de vue du character
        print("Who do you want to heal ?")
        
        for index in 0..<player.playerCharactersName.count{
            if player.playerCharactersLife[index] > 0 { //check if the target is alive
                print("""
                           \(index+1)\(player.playerCharactersName[index]), the \(player.playerCharactersType[index]) fighting with a \(player.playerCharactersWeapon[index]) (\(player.playerCharactersWeaponDamages[index]) damages point) and \(player.playerCharactersLife [index]) points of life.
        """)
            }
        }
    }
    
    static func printSwitchAttack(defensingCharacterName: String, attackingWeaponDamages: Int, defensingPlayerName: String, defensingPlayerLife: Int) {
        print("""
        \(defensingCharacterName) has received \(attackingWeaponDamages) points of damages.
        \(defensingPlayerName) has \(defensingPlayerLife) points of life remaining.
        """)
    }
}

