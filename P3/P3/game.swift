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
            self.firstPlayerFight(attackingPlayer: player2, defensingPlayer: player1)
        }
    }
    
    static func attack(attackingPlayer: Players, defensingPlayer: Players, indexDamages: Int) {
        PrintMessages.chooseTargetToAttack(player: defensingPlayer)
        
        var targetChoiceIsEmpty = true
        
        while targetChoiceIsEmpty == true {
            if let targetChoicePrompt = readLine() {
                guard let indexTarget = Int(targetChoicePrompt) else { return }
                
                if checkIfChraracterIsDead(player: defensingPlayer, index: indexTarget-1) == true { //check if target is alive
                    print ("Oh come on! This guy is dead already pick someone else!")
                }else{
                   
                    
                    var defensingCharacterLife = 0
                    var newPlayerLife = 0
                    
                    switch indexTarget {
                    case 1,2,3:
                        
                        //calcul remaining life of charachter
                        defensingCharacterLife = defensingPlayer.playerCharactersLife[indexTarget-1] - attackingPlayer.playerCharactersWeaponDamages[indexDamages]
                        //calcul remaining life of player
                        newPlayerLife = defensingPlayer.setupPlayerPointsOfLife() - attackingPlayer.playerCharactersWeaponDamages[indexDamages]
                        //met à jour le tableau de points de vie des joueurs
                        defensingPlayer.playerCharactersLife.insert(defensingCharacterLife, at: indexTarget-1)
                        //met à jour le tableau de points de vie du combattant
                        defensingPlayer.playerPointsOfLife.insert(newPlayerLife, at: indexTarget-1)
                        
                        PrintMessages.printSwitchAttack(defensingCharacterName:
                                                            defensingPlayer.playerCharactersName[indexTarget-1],
                                                        attackingWeaponDamages: attackingPlayer.playerCharactersWeaponDamages[indexDamages],
                                                        defensingPlayerName:
                                                            defensingPlayer.playerName,
                                                        defensingPlayerLife:
                                                            newPlayerLife)
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
                guard let indexTarget = Int(targetChoicePrompt) else { return }
                
                if checkIfChraracterIsDead(player: player, index: indexTarget) == true { //check if target is alive
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
    
    static func checkIfChraracterIsDead(player: Players, index: Int) -> Bool {
            
            if player.playerCharactersLife[index] <= 0 {
                return true
            }
        return false
    }
    
    private static func firstPlayerFight(attackingPlayer: Players, defensingPlayer: Players) {
        PrintMessages.chooseFighter(player: attackingPlayer)
        var choiceIsEmpty = true
        
        while choiceIsEmpty == true {
            
            if let characterChoice = readLine() {
                guard let indexCharacter = Int(characterChoice) else { return }
                
                if checkIfChraracterIsDead(player: attackingPlayer, index: indexCharacter-1) == true { //check if target is alive
                    print ("Oh come on! This guy is dead already pick someone else!")
                }else{
                    if Players.checkHealingPower(character: attackingPlayer.playerCharactersType[indexCharacter-1]) == false { //check if the character choice is a healer or not
                        switch Int(characterChoice) {
                        case 1,2,3:
                            print ("\(attackingPlayer.playerCharactersName[indexCharacter-1]) is ready to fight")
                        default:
                            print ("You must chosse between 1 and 3")
                        }
                        self.attack(attackingPlayer: attackingPlayer, defensingPlayer: defensingPlayer, indexDamages: indexCharacter-1)
                        choiceIsEmpty = false
                    
                        
                    }else if Players.checkHealingPower(character: attackingPlayer.playerCharactersType[indexCharacter-1]) == true {
                        PrintMessages.healingOrAttackingChoice() // if character is a healer, give them choice to heal or attack
                        if Players.healerChooseHealing() == true {
                            self.heal(player: attackingPlayer)
                           
                        }else{
                            self.attack(attackingPlayer: attackingPlayer, defensingPlayer: defensingPlayer, indexDamages: indexCharacter-1)
                            choiceIsEmpty = false
                        }
                    }
                    
                }
            }
        }
    }
    
}



