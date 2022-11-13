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
    static func openingGame(){
        Messages.messageOpeningGame()
        setTwoPlayers()
        Messages.messageGameReadyToStart()
    }
    
    //players give their names and choose their character and characters' name
    private static func setTwoPlayers() {
        player1.chooseNameOfPlayer(compareWith: "")
        player1.playerChooseTheirCharacters()
        player2.chooseNameOfPlayer(compareWith: player1.playerName)
        player2.playerChooseTheirCharacters()
    }
    
    
    /* deroulement du combat :
     Player1 choisi son characterChoisi = Player1Character1
     player1 choisi action de Player1Character1
     
     si choix = attaque {
     player1 attaque player2.characterChoisi (player2Character2)
     ==> message Player1Character1 a inflige X degats a player2Character2
     (X points = point de damages de Player1Character1Weapon)
     ==> player2PointofLife = Player2PointsOfLife - Player1Character1Weapon
     
     }else if choix = heal
     Player1Character1 heal Player1Character2
     ==> message Player1Character1 a inflige X soin a Player1Character2 choisi
     (X points = point de heal de Player1Character1Weapon)
     ==> player2PointofLife = Player2PointsOfLife + Player1Character1Weapon
     */
    
    static func startFight() {
        Messages.messageChooseFighter(player: player1)
        self.chooseFighter(player: player1)
        //if fighter = healer { switch Healer
        //if fighter = non healer { switch Fighter
        //self.chooseTargetToAttack(attackingPlayer: player1, defensingPlayer: player2)
     
        
    }
    
    static func chooseFighter(player: Players) {
        
        if let characterChoice = readLine(){
            
            if player.checkHealingPower() == false { //check if the character chose is a healer or not
                switch Int(characterChoice) {
                case 1:
                    print ("\(player.playerCharactersName[0]) is ready to fight")
                case 2:
                    print ("\(player.playerCharactersName[1]) is ready to fight")
                case 3:
                    print ("\(player.playerCharactersName[2]) is ready to fight")
                default:
                    print ("You must chosse between 1 and 3")
                }
            }else if player.checkHealingPower() == true  {
                Messages.messageHealingOrAttackingChoice() // if character is a healer, give them choice to heal or attack
                switch Int(characterChoice) {
                case 1:
                    Messages.messageChooseTargetToHeal(player: player)
                case 2:
                    print (" Who is your target ?")
                default:
                    print ("You must chosse between 1 and 3")
                }
            }
        }
    }
   

    static func chooseTargetToAttack(attackingPlayer: Players, defensingPlayer: Players) {
            Messages.messageChooseTargetToAttack(player: attackingPlayer)
            
            if let targetChoice = readLine(){
                switch Int(targetChoice) {
                case 1: print ("""
                       \(defensingPlayer.playerCharactersName[0]) has received \(attackingPlayer.playerCharactersWeaponDamages[0]) points of damages.
                       \(defensingPlayer.playerName) has \(defensingPlayer.getPlayerPointsOfLife()) points of life remaining.
                       """)
                case 2: print ("""
                       \(defensingPlayer.playerCharactersName[1]) has received \(attackingPlayer.playerCharactersWeaponDamages[1]) points of damages.
                       \(defensingPlayer.playerName) has \(defensingPlayer.getPlayerPointsOfLife()) points of life remaining.
                       """)
                case 3: print ("""
                       \(defensingPlayer.playerCharactersName[2]) has received \(attackingPlayer.playerCharactersWeaponDamages[2]) points of damages.
                       \(defensingPlayer.playerName) has \(defensingPlayer.getPlayerPointsOfLife()) points of life remaining.
                       """)
                default: print ("You must chosse between 1 and 3")
                }
            }
        }
    
    static func chooseTargetTOHeal(player: Players) {
            Messages.messageChooseTargetToHeal(player: player)
            
            if let targetChoice = readLine(){
                switch Int(targetChoice) {
                case 1: print ("""
                       \(player.playerCharactersName[0]) has received \(player.playerCharactersWeaponDamages[0]) points of Healing.
                       \(player.playerName) has \(player.getPlayerPointsOfLife()) points of life remaining.
                       """)
                case 2: print ("""
                       \(player.playerCharactersName[1]) has received \(player.playerCharactersWeaponDamages[1]) points of damages.
                       \(player.playerName) has \(player.getPlayerPointsOfLife()) points of life remaining.
                       """)
                case 3: print ("""
                       \(player.playerCharactersName[2]) has received \(player.playerCharactersWeaponDamages[2]) points of damages.
                       \(player.playerName) has \(player.getPlayerPointsOfLife()) points of life remaining.
                       """)
                default: print ("You must chosse between 1 and 3")
                }
            }
        }
    
    
        
        /* private func stopGame() {
         }*/
}
