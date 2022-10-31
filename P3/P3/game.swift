//
//  game.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

class Game {
    
    var numberOfPlayer: Int = 2
    
    //  game starts : if numberOfPlayer == 2 + Player == 3 Character
    func startGame() {
        if numberOfPlayer == 2{
            player1.namingPlayer()
            player2.namingPlayer()
        }else{
            print ("We are wainting for a second player ")
        }
        
        
    }
    
    //  end of the game : if lifepoints = 0
    func stopGame() {
        
    }
}
