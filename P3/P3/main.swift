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

//initialisation of players
var players = Players(playersNames: [""], pointsOfLifeOfPlayer: 200, playerId: 1, playerCharactersType: [.colossus], playerCharactersName: [""], nameOfCharacter: "")

//character initialisation
var character = Character(characterType: .dwarf, pointsOfLifeOfCharacter: 150, description: "", weapon: "", weaponDamages: 70, healing: true)


game.openingGame()





