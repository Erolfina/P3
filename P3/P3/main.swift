//
//  main.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-24.
//

import Foundation

// MARK: INITIALISATION

var game = Game()
//initialisation of 2 players
var player1 = Players()
var player2 = Players()

//character initialisation
var character = Character(characterType: "" , characterPointsOfLife: 0, description: "", weapon: "", weaponDamages: 70, healing: true)

var magus = Magus()
var colossus = Colossus()
var warrior = Warrior()
var dwarf = Dwarf()

// MARK: METHODES

Game.openingGame()
Game.startFight()






