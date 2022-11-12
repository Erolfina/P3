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
        Messages.printOpeningGame()
        setTwoPlayers()
        Messages.printGameReadyToStart()
    }
    
    //players give their names and choose their character and characters' name
    private static func setTwoPlayers() {
        player1.chooseNameOfPlayer(compareWith: "")
        player1.playerChooseTheirCharacters()
        player2.chooseNameOfPlayer(compareWith: player1.playerName)
        player2.playerChooseTheirCharacters()
    }
    
    
    private func startFight() {
    }
    
    private func stopGame() {
    }
    
  
    
    
}
