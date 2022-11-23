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
            ⚔️ 1 - Warrior : \(warrior.description) || Points of Life \(warrior.characterPointsOfLife)
                   Weapon : \(warrior.weapon) || Weapon damages : \(warrior.weaponDamages)
                   Healing ? \(warrior.healing)
            🪄 2 - Magus : \(magus.description) || Points of Life : \(magus.characterPointsOfLife)
                   Weapon : \(magus.weapon) || Weapon damages : \(magus.weaponDamages)
                   Healing ? \(magus.healing)
            🪓 3 - Dwarf : \(dwarf.description) || Points of Life : \(dwarf.characterPointsOfLife)
                   Weapon : \(dwarf.weapon) || Weapon damages : \(dwarf.weaponDamages)
                   Healing ? \(dwarf.healing)
            🛡 4 - Colossus : \(colossus.description) || Points of Life : \(colossus.characterPointsOfLife)
                   Weapon : \(colossus.weapon) || Weapon damages : \(colossus.weaponDamages)
                   Healing ? \(colossus.healing)
""")
    }
    
    static func openingGame() {
        print ("""
🏹Welcome to Battle of Heroes, where two teams of three adventurers will fight to get the title of Heroes!
Let's meet our two opponents!

""")
    }
    
    static func gameReadyToStart(firstPlayer: Players, secondPlayer: Players) {
        print ("""
Everybody is set up!
Our first opponenent : \(firstPlayer.playerName) with their 3 fighters :
""")
        for index in 0..<firstPlayer.charactersName.count {
            print ("""
- \(firstPlayer.charactersName[index]), \(firstPlayer.charactersType[index])
""")
        }
        print ("""
With a total of \(firstPlayer.setupPlayerPointsOfLife()) points of life !

VS

Our second opponenent : \(secondPlayer.playerName) with their 3 fighters :
""")
        for index in 0..<secondPlayer.charactersName.count {
            print ("""
 - \(secondPlayer.charactersName[index]), \(secondPlayer.charactersType[index])
 """)
        }
        print ("""
               With a total of \(secondPlayer.setupPlayerPointsOfLife()) points of life !
               
               """)
        
    }
    
    static func chooseFighter(player: Players) {
        print("\(player.playerName) choose your fighter :")
        
        for index in 0..<player.charactersName.count { //check if the fighter is alive
            let message1 = " \(index+1).\(player.charactersName[index]), the \(player.charactersType[index]) "
            let message2 = "fighting with a \(player.charactersWeapon[index]) (\(player.charactersWeaponDamages[index])"
            let message3 = "  damages point) and \(player.charactersLife[index]) points of life."
            
            if player.charactersLife[index] >= 0 {
                print("\(message1)\(message2)\(message3)")
            }
        }
    }
    
    static func chooseTarget(player: Players, index: Int) {
        let message1 = " \(index+1). \(player.charactersName[index]), the \(player.charactersType[index]) "
        let message2 = "fighting with a \(player.charactersWeapon[index]) (\(player.charactersWeaponDamages[index])"
        let message3 = "damages point) and \(player.charactersLife[index]) points of life."
        if player.charactersLife[index] >= 0 { //check if the target is alive
        }
        print("\(message1)\(message2)\(message3) ")
        
    }
    
    static func chooseTargetToAttack(player: Players) { //integrer fucntion de calcul de vue du character
        print("Who do you want to fight ?")
        
        for indexTarget in 0..<player.charactersName.count {
            chooseTarget(player: player, index: indexTarget)
            
        }
    }
    
    static func chooseTargetToHeal(player: Players) { //integrer fucntion de calcul de vue du character
        print("Who do you want to heal ?")
        
        for indexTarget in 0..<player.charactersName.count {
            chooseTarget(player: player, index: indexTarget)
        }
    }
    
    static func healingOrAttackingChoice() {
        print ("""
    What do you want to do?
    1. Healing?
    2. Attacking ?
    """)
    }
    
    static func printSwitchAttack(defensingCharacterName: String,
                                  attackingWeaponDamages: Int,
                                  defensingPlayerName: String,
                                  defensingPlayerLife: Int) {
        print("""
        \(defensingCharacterName) has received \(attackingWeaponDamages) points of damages.
        \(defensingPlayerName) has \(defensingPlayerLife) points of life remaining.
        """)
    }
    
    static func printSwitchHeal(characterName: String, healingPoints: Int, playerName: String, playerLife: Int) {
        print("""
        \(characterName) has received \(healingPoints) healing points .
        \(playerName) has \(playerLife) points of life remaining.
        """)
    }
    
    static func playerIsDead() {
        print ("Oh come on! This guy is dead already pick someone else!")
    }
    
    static func commandInvalid() {
        print ("This command is invalid. Please choose between the option proposed")
    }
    
    static func gameOver() {
        if player1.playerLife <= 0{
            
            print ("""
                
                GAME OVER!
                
                \(player2.playerName) won the game!
                
                """)
        } else if player2.playerLife <= 0{
            print ("""
                
                GAME OVER!
                
                \(player1.playerName) won the game!
                
                
                """)
        }
    }
    
    static func statistics(firstPlayer: Players, secondPlayer: Players) {
        print ("The game runs for \(Game.counterRound)")
        Self.statisticsFighter(firstPlayer: firstPlayer, secondPlayer: secondPlayer)
        Self.statisticsHeal(firstPlayer: firstPlayer, secondPlayer: secondPlayer)
    }
    
    static func statisticsFighter(firstPlayer: Players, secondPlayer: Players) {
        
        print("\(firstPlayer.playerName)'s fighters")
        
        for index in 0..<firstPlayer.charactersName.count {
            
            print("""
            \(firstPlayer.charactersName[index])
            Type : \(firstPlayer.charactersType[index])
            Weapon: \(firstPlayer.charactersWeapon[index])
            Weapon damages given : \(firstPlayer.damagesGivenCounter[index])
            Healing point received : \(firstPlayer.healingCounter[index])
            Healing point given :
            Point of life remaining : \(firstPlayer.charactersLife[index])
            
            """)
            
            
        }
        
        print("The fighter of \(secondPlayer.playerName)")
        
        for index in 0..<secondPlayer.charactersName.count {
            print("""
            \(secondPlayer.charactersName[index])
            Type : \(secondPlayer.charactersType[index])
            Weapon: \(secondPlayer.charactersWeapon[index])
            Weapon damages given : \(secondPlayer.damagesGivenCounter[index])
            Healing point received : \(secondPlayer.healingCounter[index])
            Healing point given :
            Point of life remaining : \(secondPlayer.charactersLife[index])
            
            """)
        }
    }
    
    static func statisticsHeal( firstPlayer: Players, secondPlayer: Players) {
        for index in 0..<firstPlayer.charactersName.count {
            let firstPlayerHealingStatistics = firstPlayer.healingCounter[index]
            let secondPlayerHealingStatistics = secondPlayer.healingCounter[index]
            
            if firstPlayer.charactersType[index] == .magus{
                print("The \(firstPlayer.charactersType[index]) give \(firstPlayerHealingStatistics) healing points ")
            } else if secondPlayer.charactersType[index] == .magus{
                print("The \(secondPlayer.charactersType[index]) give \(secondPlayerHealingStatistics) healing points ")
            }
        }
    }
}
