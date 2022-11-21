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
        player1.chooseNameOfPlayer(player: player1, compareWith: "")
        Players.playerChooseTheirCharacters(player: player1, firstPlayer: player1, secondPlayer: player2)
        player2.chooseNameOfPlayer(player: player2, compareWith: player1.playerName)
        Players.playerChooseTheirCharacters(player: player2, firstPlayer: player2, secondPlayer: player1)
        PrintMessages.gameReadyToStart(firstPlayer: player1, secondPlayer: player2)
    }
    
 /*   //players give their names and choose their character and characters' name
    private static func setUpPlayer(firstPlayer: Players, secondPlayer: Players) {
        Players.chooseNameOfPlayer(player: firstPlayer, compareWith: Players.playerName)
        Players.playerChooseTheirCharacters()
    }*/
    
    static func startFight() {
        while player1.playerLife >= 0 || player2.playerLife >= 0 {
            self.fight(attackingPlayer: player1, defensingPlayer: player2)
            self.fight(attackingPlayer: player2, defensingPlayer: player1)
        }
    }
    
    private static func fight(attackingPlayer: Players, defensingPlayer: Players) {
        PrintMessages.chooseFighter(player: attackingPlayer)
        var choiceIsEmpty = true
        
        while choiceIsEmpty == true {
            
            if let characterChoice = readLine() {
                guard let indexCharacter = Int(characterChoice) else { return }
                
                if checkIfChraracterIsDead(player: attackingPlayer, index: indexCharacter-1) == true { //check if target is alive
                    PrintMessages.playerIsDead()
                }else{
                    if Players.checkHealingPower(character: attackingPlayer.playerCharactersType[indexCharacter-1]) == false { //check if the character choice is a healer or not
                        switch Int(characterChoice) {
                        case 1,2,3:
                            print ("\(attackingPlayer.playerCharactersName[indexCharacter-1]) is ready to fight")
                        default:
                            PrintMessages.commandInvalid()
                        }
                        self.attack(attackingPlayer: attackingPlayer, defensingPlayer: defensingPlayer, indexDamages: indexCharacter-1)
                        choiceIsEmpty = false
                        
                    }else if Players.checkHealingPower(character: attackingPlayer.playerCharactersType[indexCharacter-1]) == true {
                        PrintMessages.healingOrAttackingChoice() // if character is a healer, give them choice to heal or attack
                        if Players.healerChooseHealing() == true {
                            self.heal(player: attackingPlayer, indexHealing: indexCharacter-1)
                            
                        }else{
                            self.attack(attackingPlayer: attackingPlayer, defensingPlayer: defensingPlayer, indexDamages: indexCharacter-1)
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
                }else{
                    var defensingCharacterLife = defensingPlayer.playerCharactersLife[indexTarget-1]
                    let remainingLife = defensingPlayer.playerLife - attackingPlayer.playerCharactersWeaponDamages[indexDamages]
                    
                    switch indexTarget {
                    case 1,2,3:
                        
                        //calcul remaining life of charachter
                        defensingCharacterLife -= attackingPlayer.playerCharactersWeaponDamages[indexDamages]
                        //update life of player
                        defensingPlayer.playerLife = remainingLife
                        //update le tableau de points de vie des character
                        defensingPlayer.playerCharactersLife[indexTarget-1] = defensingCharacterLife
                        
                        PrintMessages.printSwitchAttack(defensingCharacterName:
                                                            defensingPlayer.playerCharactersName[indexTarget-1],
                                                        attackingWeaponDamages: attackingPlayer.playerCharactersWeaponDamages[indexDamages],
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
                
                if checkIfChraracterIsDead(player: player, index: indexTarget) == true { //check if target is alive
                    PrintMessages.playerIsDead()
                }else {
                    
                    var attackingCharacterLife = player.playerCharactersLife[indexTarget-1]
                    let remainingLife = player.playerLife + player.playerCharactersHealingPoint[indexHealing]
                    
                    switch Int(targetChoicePrompt) {
                    case 1,2,3:
                        //calcul remaining life of charachter
                        attackingCharacterLife += player.playerCharactersHealingPoint[indexHealing]
                        //update  life of player
                        player.playerLife = remainingLife
                        
                        //met à jour le tableau de points de vie du combattant
                        player.playerCharactersLife.insert(attackingCharacterLife, at: indexTarget-1)
                        
                        PrintMessages.printSwitchHeal(characterName: player.playerCharactersName[indexTarget-1],
                                                      healingPoints: player.playerCharactersHealingPoint[indexHealing],
                                                      playerName: player.playerName,
                                                      playerLife: player.playerLife)
                        targetChoiceIsEmpty = false
                    default:  PrintMessages.commandInvalid()
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
    
}



