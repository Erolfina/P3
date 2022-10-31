//
//  main.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-24.
//

import Foundation

var game = Game()

//initialisation de 2 joueurs
var player1 = Player(playerName: "bob", pointsOfLifeOfPlayer: 200, playerId: 1)
var player2 = Player(playerName: "loulou", pointsOfLifeOfPlayer: 200, playerId: 2)

//initialisation des character
var character = Character(characterType: .dwarf, nameOfCharacter: "Bob", pointsOfLifeOfCharacter: 150, description: "aya!", weapon: "stick", weaponDamages: 70)


var colossus = Colossus()
var magus = Magus()
var dwarf = Dwarf()
var warrior = Warrior()



game.startGame()
//character.namingCharacter()
character.namingCharacter()

