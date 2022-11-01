//
//  main.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-24.
//

import Foundation

//game initialisation
var game = Game()

//initialisation of 2 players
var player1 = Players(playerName: "", pointsOfLifeOfPlayer: 200, playerId: 1,character: [])
var player2 = Players(playerName: "", pointsOfLifeOfPlayer: 200, playerId: 2,character: [])



//character initialisation
var character = Character(characterType: .dwarf, nameOfCharacter: "Bob", pointsOfLifeOfCharacter: 150, description: "aya!", weapon: "stick", weaponDamages: 70)


var colossus = Colossus()
var magus = Magus()
var dwarf = Dwarf()
var warrior = Warrior()


game.openingGame(firstPlayer: player1, secondPlayer: player2)
//game.chooseYourCharacters(player1: player1, player2: player2)
//game.startGame(playerOne: player1, playerTwo: player2)
//player1.chooseYourCharacters(playername1: player1, playername2: player2)
//player1.setNameOfPlayer(player: player1, playerName: "")
//player1.chooseYourCharacters(player1: player1, player2: player2)
//player2.setNameOfPlayer(player: player2, playerName: player1.playerName)
//player2.chooseYourCharacters(player1: player1, player2: player2)

