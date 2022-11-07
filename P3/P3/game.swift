//
//  game.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

final class Game {
    
    //  game starts : if numberOfPlayer == 2 + Player == 3 Characters
    func openingGame(firstPlayer: Players, secondPlayer: Players){
        messages.printOpeningGame()
        player1.setNameOfPlayer(playerName: "")
        player1.playerChooseTheirCharacters(playerCharactersType: [])
        player2.setNameOfPlayer(playerName: player1.playerName)
        player2.playerChooseTheirCharacters(playerCharactersType: [])
    }
    
    private func startGame(firstPlayer: Players, secondPlayer:Players) {
    }
    
    private func stopGame() {
    }
}
