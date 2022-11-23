//
//  game.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

final class Game {
    
    // MARK: Privates Methods
    static var counterRound = 0
   
    
    static func openingGame() {
        PrintMessages.openingGame()
        player1.chooseNameOfPlayer(player: player1, compareWith: "")
        Players.playerChooseTheirCharacters(player: player1, firstPlayer: player1, secondPlayer: player2)
        player2.chooseNameOfPlayer(player: player2, compareWith: player1.playerName)
        Players.playerChooseTheirCharacters(player: player2, firstPlayer: player2, secondPlayer: player1)
        PrintMessages.gameReadyToStart(firstPlayer: player1, secondPlayer: player2)
    }
    
    static func runGame() {
        while Players.checkIfPlayerIsDead(fistPlayer: player1, secondPlayer: player2) == false {
            self.fight(attackingPlayer: player1, defensingPlayer: player2)
            self.fight(attackingPlayer: player2, defensingPlayer: player1)
            counterRound += 1
        }
        PrintMessages.gameOver()
        PrintMessages.statistics(firstPlayer: player1, secondPlayer: player2)
    }
    
    
    private static func fight(attackingPlayer: Players, defensingPlayer: Players) {
        PrintMessages.chooseFighter(player: attackingPlayer)
        
        var choiceIsEmpty = true
        while choiceIsEmpty == true {
            
            if let characterChoice = readLine() {
                guard let indexCharacter = Int(characterChoice) else { return }
                
                if checkIfChraracterIsDead(player: attackingPlayer, index: indexCharacter-1) == true { //check if target is alive
                    PrintMessages.playerIsDead()
                } else {
                    if Players.checkHealingPower(character: attackingPlayer.charactersType[indexCharacter-1]) == false { //check if the character choice is a healer or not
                        switch Int(characterChoice) {
                        case 1,2,3:
                            print ("\(attackingPlayer.charactersName[indexCharacter-1]) is ready to fight")
                        default:
                            PrintMessages.commandInvalid()
                        }
                        self.attack(attackingPlayer: attackingPlayer,
                                    defensingPlayer: defensingPlayer,
                                    indexDamages: indexCharacter-1)
                        choiceIsEmpty = false
                        
                    } else if Players.checkHealingPower(character: attackingPlayer.charactersType[indexCharacter-1]) == true {
                        PrintMessages.healingOrAttackingChoice() // if character is a healer, give them choice to heal or attack
                        if Players.healerChooseHealing() == true {
                            self.heal(player: attackingPlayer, indexHealing: indexCharacter-1)
                            
                        } else {
                            self.attack(attackingPlayer: attackingPlayer,
                                        defensingPlayer: defensingPlayer,
                                        indexDamages: indexCharacter-1)
                            choiceIsEmpty = false
                        }
                    }
                }
            }
        }
    }
    
    static func attack(attackingPlayer: Players, defensingPlayer: Players, indexDamages: Int) {
        PrintMessages.chooseTargetToAttack(player: defensingPlayer)
        
        var targetChoiceIsEmpty = true
        
        while targetChoiceIsEmpty == true {
            if let targetChoicePrompt = readLine() {
                guard let indexTarget = Int(targetChoicePrompt) else { return }
                
                if checkIfChraracterIsDead(player: defensingPlayer, index: indexTarget-1) == true { //check if target is alive
                    PrintMessages.playerIsDead()
                } else {
                    var defensingCharacterLife = defensingPlayer.charactersLife[indexTarget-1]
                    let remainingLife = defensingPlayer.playerLife - attackingPlayer.charactersWeaponDamages[indexDamages]
                    let damagesPoints = attackingPlayer.charactersWeaponDamages[indexDamages]
                    
                    switch indexTarget {
                    case 1,2,3:
                        
                        //calcul remaining life of charachter
                        defensingCharacterLife -= attackingPlayer.charactersWeaponDamages[indexDamages]
                        //update life of player
                        defensingPlayer.playerLife = remainingLife
                        //update le tableau de points de vie des character
                        defensingPlayer.charactersLife[indexTarget-1] = defensingCharacterLife
                        //update cumulated damages points received
                        attackingPlayer.damagesGivenCounter[indexTarget-1] += damagesPoints
                        
                      
                        
                        PrintMessages.printSwitchAttack(defensingCharacterName:
                                                            defensingPlayer.charactersName[indexTarget-1],
                                                        attackingWeaponDamages:
                                                            attackingPlayer.charactersWeaponDamages[indexDamages],
                                                        defensingPlayerName:
                                                            defensingPlayer.playerName,
                                                        defensingPlayerLife:
                                                            defensingPlayer.playerLife
                        )
                        
                        targetChoiceIsEmpty = false
                        
                    default: PrintMessages.commandInvalid()
                    }
                }
            }
        }
    }
    
    static func heal(player: Players, indexHealing: Int) {
        PrintMessages.chooseTargetToHeal(player: player)
        var targetChoiceIsEmpty = true
        
        while targetChoiceIsEmpty == true {
            if let targetChoicePrompt = readLine() {
                guard let indexTarget = Int(targetChoicePrompt) else { return }
                
                if checkIfChraracterIsDead(player: player, index: indexTarget-1) == true { //check if target is alive
                    PrintMessages.playerIsDead()
                } else {
                    
                    var attackingCharacterLife = player.charactersLife[indexTarget-1]
                    let remainingLife = player.playerLife + player.charactersHealingPoint[indexHealing]
                    let healingPoints = player.charactersHealingPoint[indexHealing]
                    
                    switch Int(targetChoicePrompt) {
                    case 1,2,3:
                        //calcul remaining life of charachter
                        attackingCharacterLife += player.charactersHealingPoint[indexHealing]
                        //update  life of player
                        player.playerLife = remainingLife
                        
                        //met à jour le tableau de points de vie du combattant
                        player.healingCounter[indexHealing] += healingPoints
                        
                        PrintMessages.printSwitchHeal(characterName: player.charactersName[indexTarget-1],
                                                      healingPoints: player.charactersHealingPoint[indexHealing],
                                                      playerName: player.playerName,
                                                      playerLife: player.playerLife)
                        
            
                        player.charactersHealingPoint[indexHealing-1] += healingPoints
                        targetChoiceIsEmpty = false
                    default:  PrintMessages.commandInvalid()
                    }
                }
            }
        }
    }
    
    static func checkIfChraracterIsDead(player: Players, index: Int) -> Bool {
        
        if player.charactersLife[index] <= 0 {
            return true
        }
        return false
    }
    
}



