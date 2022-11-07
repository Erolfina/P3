//
//  game.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

final class Game {
    
    //  game starts : if numberOfPlayer == 2 + Player == 3 Characters
    func openingGame(){
        messages.printOpeningGame()
        players.setTwoPlayers()
    }
    
    private func startGame(firstPlayer: Players, secondPlayer:Players) {
    }
    
    private func stopGame() {
    }
}
