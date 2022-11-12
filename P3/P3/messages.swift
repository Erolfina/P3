//
//  messages.swift
//  P3
//
//  Created by Flore Gridaine on 2022-11-06.
//

import Foundation

final class Messages {
    
    // MARK: Privates Methods
    
    static func messageChooseYourCharacters() {
        
        print ("""
            Please, choose your hero :
            ⚔️ 1 - Warrior : \(warrior.description) || Points of Life \(warrior.characterPointsOfLife) || Weapon : \(warrior.weapon) || Weapon damages : \(warrior.weaponDamages) || Healing ? \(warrior.healing) ||
            🪄 2 - Magus : \(magus.description) ||
            Points of Life : \(magus.characterPointsOfLife) || Weapon : \(magus.weapon) || Weapon damages : \(magus.weaponDamages) || Healing ? \(magus.healing) ||
            🪓 3 - Dwarf : \(dwarf.description) || Points of Life : \(dwarf.characterPointsOfLife) || Weapon : \(dwarf.weapon) || Weapon damages : \(dwarf.weaponDamages) || Healing ? \(dwarf.healing) ||
            🛡 4 - Colossus : \(colossus.description) || Points of Life : \(colossus.characterPointsOfLife) || Weapon : \(colossus.weapon) || Weapon damages : \(colossus.weaponDamages) || Healing ? \(colossus.healing) ||
""")
    }
    
    static func printOpeningGame() {
        print ("""
🏹Welcome to Battle of Heroes, where two teams of three adventurers will fight to get the title of Heroes!
Let's meet our two opponents!

""")
    }
    
    static func printGameReadyToStart (){
        print ("""
Everybody is set up!
Our first opponenent : \(player1.playerName) with their 3 fighter :
- \(player1.playerCharactersName[0]), \(player1.playerCharactersType[0])
- \(player1.playerCharactersName[1]), \(player1.playerCharactersType[1])
- \(player1.playerCharactersName[2]), \(player1.playerCharactersType[2])
With a total of \(player1.getPlayerPointsOfLife()) points of life !

VS

Our second opponenent : \(player2.playerName) with their 3 fighter :
- \(player2.playerCharactersName[0]), \(player2.playerCharactersType[0])
- \(player2.playerCharactersName[1]), \(player2.playerCharactersType[1])
- \(player2.playerCharactersName[2]), \(player2.playerCharactersType[2])
With a total of \(player2.getPlayerPointsOfLife()) points of life !



""")
    }
}


