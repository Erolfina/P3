//
//  game.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

class Game {
    
    var numberOfPlayer: Int = 2
    
    //  game starts : if numberOfPlayer == 2 + Player == 3 Characters
    func startGame(playerOne: Player, playerTwo:Player) {
        self.setNameOfPlayer(player: playerOne, playerName: "")
        self.setNameOfPlayer(player: playerTwo, playerName: playerOne.playerName)
    }
    
    func checkIfNameOfPlayerIsEmpty()->Bool{
        let playerNameIsEmpty = true
        
        while playerNameIsEmpty == true {
            if let playerNamePrompt = readLine() { //parameter for getting the name given by player
                if playerNamePrompt == "" {
                    print ("Euh ... Who are you? Please give me your name!")
                    return true
                }else{
                    return false
                }
            }
        }
    }
    
    func setNameOfPlayer(player: Player, playerName: String) {
        print ("Hello stranger \(player.playerId)! What's your name? ")
        var playerNameIsEmpty = true
        
        while playerNameIsEmpty == true {
            if let playerNamePrompt = readLine() { //parameter for getting the name given by player
                if playerNamePrompt != "" {
                    if self.isNamesEqual(name1: playerName, newNamePromt: playerNamePrompt) == true {
                        print ("Impostor! That's someone else name!")
                    }else{
                        print ("Are you ready to fight? \(playerNamePrompt)")
                        player.playerName = playerNamePrompt
                        playerNameIsEmpty = false
                    }
                } else {
                    print("Brave fighter! You need to introduce yourself!")
                }
            }
        }
    }
    
    ///compare names of  players and check if they are equal
    func isNamesEqual(name1: String, newNamePromt: String) -> Bool {
        if newNamePromt == name1 {
           return true
        }else {
            return false
        }
    }

    
    //  end of the game : if lifepoints = 0
    func stopGame() {
        
    }
    
    
}
