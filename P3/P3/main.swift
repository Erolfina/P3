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
var player1 = Player(playerName: "", pointsOfLifeOfPlayer: 200, playerId: 1)
var player2 = Player(playerName: "", pointsOfLifeOfPlayer: 200, playerId: 2)



//character initialisation
var character = Character(characterType: .dwarf, nameOfCharacter: "Bob", pointsOfLifeOfCharacter: 150, description: "aya!", weapon: "stick", weaponDamages: 70)


var colossus = Colossus()
var magus = Magus()
var dwarf = Dwarf()
var warrior = Warrior()



game.startGame(playerOne: player1, playerTwo: player2)
print(player1.playerName)
print(player2.playerName)
//character.namingCharacter()

