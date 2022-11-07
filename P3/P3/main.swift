//
//  main.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-24.
//

import Foundation

//game initialisation
var game = Game()

//initialisation of all print of the game
var messages = Messages()

//initialisation of 2 players
var player1 = Players(playerName: "", pointsOfLifeOfPlayer: 200, playerId: 1, playerCharactersType: [.colossus], playerCharactersName: [""], nameOfCharacter: "")
var player2 = Players(playerName: "", pointsOfLifeOfPlayer: 200, playerId: 2, playerCharactersType: [.colossus], playerCharactersName: [""], nameOfCharacter: "")
//character initialisation
var character = Character(characterType: .dwarf, pointsOfLifeOfCharacter: 150, description: "", weapon: "", weaponDamages: 70, healing: true)


var colossus = Colossus()
var magus = Magus()
var dwarf = Dwarf()
var warrior = Warrior()


game.openingGame(firstPlayer: player1, secondPlayer: player2)





