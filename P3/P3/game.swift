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
    func openingGame(firstPlayer: Players, secondPlayer: Players){
        print ("""
🏹Welcome to Battle of Heroes, where two teams of three adventurers will fight to get the title of Heroes!
Let's meet our two opponents!

""")
        player1.setNameOfPlayer(/*player: player1,*/ playerName: "")
        messages.messageChooseYourCharacters()
        player2.setNameOfPlayer(/*player: player2,*/ playerName: player1.playerName)
        messages.messageChooseYourCharacters()
    }
    
    func startGame(firstPlayer: Players, secondPlayer:Players) {
       // self.setNameOfPlayer(player: playerOne, playerName: "")
      //  self.setNameOfPlayer(player: playerTwo, playerName: playerOne.playerName)
    }
    
    
    /*func setNameOfPlayer(player: Player, playerName: String) {
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
    }*/
     
   /* func chooseYourCharacters(player1: Player, playerName: String){
        print ("Hello \(player.playerName), choose your first hero : ")
    }*/

    
    //  end of the game : if lifepoints = 0
    func stopGame() {
        
    }
    
    
}
