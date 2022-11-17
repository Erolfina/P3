//
//  game.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

final class Game {
    
    // MARK: Privates Methods
    
    //Messages when you open the game and set up your characters
    static func openingGame() {
        PrintMessages.openingGame()
        setTwoPlayers()
        PrintMessages.gameReadyToStart()
    }
    
    //players give their names and choose their character and characters' name
    private static func setTwoPlayers() {
        player1.chooseNameOfPlayer(compareWith: "")
        player1.playerChooseTheirCharacters()
        player2.chooseNameOfPlayer(compareWith: player1.playerName)
        player2.playerChooseTheirCharacters()
    }
    
    static func startFight() {
        
        while player1.setupPlayerPointsOfLife() != 0 || player2.setupPlayerPointsOfLife() != 0 {
            self.firstPlayerFight(attackingPlayer: player1, defensingPlayer: player2)
            self.secondPlayerFight(attackingPlayer: player2, defensingPlayer: player1)
        }
    }
    
    
    static func attack(attackingPlayer: Players, defensingPlayer: Players) {
        PrintMessages.chooseTargetToAttack(player: defensingPlayer)
        
        var targetChoiceIsEmpty = true
        
        while targetChoiceIsEmpty == true {
            if let targetChoicePrompt = readLine() {
                
                if checkIfChraracterIsDead(player: defensingPlayer) == true { //check if target is alive
                    print ("Oh come on! This guy is dead already pick someone else!")
                }else {
                    guard var index  = Int(targetChoicePrompt) else { return }
                
                    switch index {
                    case 1,2,3:
                        PrintMessages.printSwitchAttack(defensingCharacterName:
                                                            defensingPlayer.playerCharactersName[index-1],
                                                        attackingWeaponDamages: attackingPlayer.playerCharactersWeaponDamages[index-1],
                                                        defensingPlayerName:
                                                            defensingPlayer.playerCharactersName[index-1],
                                                        defensingPlayerLife:
                                                            defensingPlayer.setupPlayerPointsOfLife() - attackingPlayer.playerCharactersWeaponDamages[index-1])
                        
                        defensingPlayer.playerCharactersLife[index-1] -= attackingPlayer.playerCharactersWeaponDamages[index-1]  //calculate new characterLifePoint
                        targetChoiceIsEmpty = false
                    default: print ("This command is invalid. Please choose between the option")
                    }
                }
            }
        }
    }

    static func heal(player: Players) {
        PrintMessages.chooseTargetToHeal(player: player)
        var targetChoiceIsEmpty = true
        
        while targetChoiceIsEmpty == true {
            if let targetChoicePrompt = readLine() {
                
                if checkIfChraracterIsDead(player: player) == true { //check if target is alive
                    print ("Oh come on! This guy is dead already pick someone else!")
                }else {
                    
                    switch Int(targetChoicePrompt) {
                    case 1:
                        print ("""
                       \(player.playerCharactersName[0]) has received \(player.playerCharactersWeaponDamages[0]) points of healing.
                       \(player.playerName) has \(player.setupPlayerPointsOfLife() + player.playerCharactersWeaponDamages[0]) points of life remaining.
                       """)
                        player.playerCharactersLife[0] += player.playerCharactersWeaponDamages[0]
                        targetChoiceIsEmpty = false
                    case 2:
                        print ("""
                       \(player.playerCharactersName[1]) has received \(player.playerCharactersWeaponDamages[1]) points of healing.
                       \(player.playerName) has \(player.setupPlayerPointsOfLife() + player.playerCharactersWeaponDamages[1]) points of life remaining.
                       """)
                        player.playerCharactersLife[1] += player.playerCharactersWeaponDamages[1]
                        targetChoiceIsEmpty = false
                    case 3:
                        print ("""
                       \(player.playerCharactersName[2]) has received \(player.playerCharactersWeaponDamages[2]) points of healing.
                       \(player.playerName) has \(player.setupPlayerPointsOfLife() + player.playerCharactersWeaponDamages[2]) points of life remaining.
                       """)
                        player.playerCharactersLife[2] += player.playerCharactersWeaponDamages[2]
                        targetChoiceIsEmpty = false
                    default: print ("This command is invalid. Please choose between the option")
                    }
                }
            }
           
        }
    }
    
    static func checkIfChraracterIsDead(player: Players) -> Bool {
        
        for index in 0..<player.playerCharactersLife.count{
            
            if player.playerCharactersLife[index] <= 0 {
                return true
            }
        }
        return false
    }
    
    private static func firstPlayerFight(attackingPlayer: Players, defensingPlayer: Players) {
        PrintMessages.chooseFighter(player: player1)
        if let characterChoice = readLine() {
            
            if checkIfChraracterIsDead(player: attackingPlayer) == true { //check if target is alive
                print ("Oh come on! This guy is dead already pick someone else!")
            }else{
                guard var intchar = Int(characterChoice) else { return }
               intchar -= 1
                
                if Players.checkHealingPower(character: attackingPlayer.playerCharactersType[intchar]) == false { //check if the character choice is a healer or not
                    switch Int(characterChoice) {
                    case 1,2,3:
                        print ("\(attackingPlayer.playerCharactersName[intchar]) is ready to fight")
                    default:
                        print ("You must chosse between 1 and 3")
                    }
                    self.attack(attackingPlayer: player1, defensingPlayer: player2)
                    
                }else if Players.checkHealingPower(character: attackingPlayer.playerCharactersType[intchar]) == true {
                    PrintMessages.healingOrAttackingChoice() // if character is a healer, give them choice to heal or attack
                    if Players.healerChooseHealing() == true {
                        self.heal(player: player1)
                    }else{
                        self.attack(attackingPlayer: player1, defensingPlayer: player2)
                    }
                }
            }
        }
    }
    
    private static func secondPlayerFight(attackingPlayer: Players, defensingPlayer: Players) {
        PrintMessages.chooseFighter(player: player2)
        if let characterChoice = readLine(){
            guard var intchar = Int(characterChoice) else {
                return
            }
            intchar -= 1
            
            let isHealer = Players.checkHealingPower(character: attackingPlayer.playerCharactersType[intchar])
            if isHealer == false { //check if the character chose is a healer or not
                switch Int(characterChoice) {
                case 1:
                    print ("\(attackingPlayer.playerCharactersName[0]) is ready to fight")
                case 2:
                    print ("\(attackingPlayer.playerCharactersName[1]) is ready to fight")
                case 3:
                    print ("\(attackingPlayer.playerCharactersName[2]) is ready to fight")
                default:
                    print ("You must chosse between 1 and 3")
                }
                self.attack(attackingPlayer: player2, defensingPlayer: player1)
                
            }else if Players.checkHealingPower(character: attackingPlayer.playerCharactersType[intchar]) == true {
                PrintMessages.healingOrAttackingChoice() // if character is a healer, give them choice to heal or attack
                if Players.healerChooseHealing() == true {
                    self.heal(player: player2)
                }else{
                    self.attack(attackingPlayer: player2, defensingPlayer: player1)
                }
            }
        }
    }
    
}






