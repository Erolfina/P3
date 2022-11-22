//
//  main.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-24.
//

import Foundation

// MARK: INITIALISATION


//initialisation of 2 players
var player1 = Players()
var player2 = Players()

var magus = Magus()
var colossus = Colossus()
var warrior = Warrior()
var dwarf = Dwarf()

//var indexChoice = Game.getIndex()

// MARK: METHODES
/*PrintMessages.openingGame()
player1.chooseNameOfPlayer(player: player1, compareWith: "")
Players.playerChooseTheirCharacters(player: player1, firstPlayer: player1, secondPlayer: player2)
player2.chooseNameOfPlayer(player: player2, compareWith: player1.playerName)
Players.playerChooseTheirCharacters(player: player2, firstPlayer: player2, secondPlayer: player1)
PrintMessages.gameReadyToStart(firstPlayer: player1, secondPlayer: player2)*/



Game.openingGame()
Game.runGame()







