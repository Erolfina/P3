//
//  player.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

final class Players {
    
    // MARK: Properties
    var playerName: String = ""
    //var playerPointsOfLife: [Int] = []
    
     var playerCharactersType: [Category] = []
     var playerCharactersName: [String] = []
     var playerCharactersWeapon: [String] = []
     var playerCharactersWeaponDamages: [Int] = []
     var playerCharactersHealingPoint: [Int] = []
     var playerCharactersLife: [Int] = []
     var playerLife: Int = 0
    static var nameOfCharacter: String = ""
    
    
    // MARK: Privates Methods
    
    func chooseNameOfPlayer(player: Players, compareWith name: String) {
        print ("Hello stranger ! What's your name? ")
        var playerNameIsEmpty = true
        
        while playerNameIsEmpty == true {
            
            if let playerNamePrompt = readLine() {
                if playerNamePrompt == "" {
                    print("Brave fighter! You need to introduce yourself!")
                } else {
                    if playerNamePrompt == name {
                        print ("Impostor! That's someone else name! Please give your real name!")
                    } else {
                        self.playerName = playerNamePrompt
                        print ("Are you ready to fight? \(playerNamePrompt)")
                        playerNameIsEmpty = false
                    }
                }
            }
        }
    }
    
    static func playerChooseTheirCharacters(player: Players, firstPlayer: Players, secondPlayer: Players) {
        var numberOfCharacter = 0
        while numberOfCharacter < 3 {
            PrintMessages.chooseYourCharacters()
            if let characterChoice = readLine(){
                switch Int(characterChoice) {
                case 1:
                    player.playerCharactersType.append(Category.warrior)
                    player.playerCharactersWeapon.append(warrior.weapon)
                    player.playerCharactersWeaponDamages.append(warrior.weaponDamages)
                    player.playerCharactersLife.append(warrior.characterPointsOfLife)
                    print ("What's the name of this warrior?")
                    Players.chooseNameOfCharacters(player: player, firstPlayer: firstPlayer, secondPlayer: secondPlayer)
                    numberOfCharacter += 1
                case 2:
                    player.playerCharactersType.append(Category.magus)
                    player.playerCharactersWeapon.append(magus.weapon)
                    player.playerCharactersWeaponDamages.append(magus.weaponDamages)
                    player.playerCharactersHealingPoint.append(magus.healingPoints)
                    player.playerCharactersLife.append(magus.characterPointsOfLife)
                    print ("What's the name of this magus?")
                    Players.chooseNameOfCharacters(player: player, firstPlayer: firstPlayer, secondPlayer: secondPlayer)
                    numberOfCharacter += 1
                case 3:
                    player.playerCharactersType.append(Category.dwarf)
                    player.playerCharactersWeapon.append(dwarf.weapon)
                    player.playerCharactersWeaponDamages.append(dwarf.weaponDamages)
                    player.playerCharactersLife.append(dwarf.characterPointsOfLife)
                    print ("What's the name of this dwarf?")
                    Players.chooseNameOfCharacters(player: player, firstPlayer: firstPlayer, secondPlayer: secondPlayer)
                    numberOfCharacter += 1
                case 4:
                    player.playerCharactersType.append(Category.colossus)
                    player.playerCharactersWeapon.append(colossus.weapon)
                    player.playerCharactersWeaponDamages.append(colossus.weaponDamages)
                    player.playerCharactersLife.append(colossus.characterPointsOfLife)
                    print ("What's the name of this colossus?")
                    Players.chooseNameOfCharacters(player: player, firstPlayer: firstPlayer, secondPlayer: secondPlayer)
                    numberOfCharacter += 1
                default:
                    PrintMessages.commandInvalid()
                }
            }
        }
    }
    
    static func chooseNameOfCharacters(player: Players, firstPlayer: Players, secondPlayer: Players) {
        var characterNameIsEmpty = true
        
        while characterNameIsEmpty == true {
            if let characterNamePrompt = readLine() {
                if characterNamePrompt == "" {
                    print ("This hero needs a name!")
                } else if Self.characterNameAvailaible(firstPlayer: firstPlayer, secondPlayer: secondPlayer, nameChosen: characterNamePrompt) == false{
                } else {
                    nameOfCharacter = characterNamePrompt
                    player.playerCharactersName.append(nameOfCharacter)
                    print ("\(nameOfCharacter) has been added to your team!")
                    characterNameIsEmpty = false
                }
            }
        }
    }
    
       static func characterNameAvailaible(firstPlayer: Players, secondPlayer: Players, nameChosen: String) -> Bool {
        
        if firstPlayer.playerCharactersName.contains(nameChosen) || secondPlayer.playerCharactersName.contains(nameChosen) {
            print("This is the name of another hero! Please choose another one!")
            return false
        }
        return true
    }
        
    
    //calculate the initial amount of Player's point of life by additionning Characters' life points
    func setupPlayerPointsOfLife() -> Int {
        var additionOfCharacterPointOfLife = 0
        
       for index in 0..<self.playerCharactersLife.count {
            additionOfCharacterPointOfLife += self.playerCharactersLife[index]
        }
        playerLife = additionOfCharacterPointOfLife
        return additionOfCharacterPointOfLife
    }
    
    
    static func checkHealingPower(character: Category) -> Bool {
        if character == Category.magus {
            return true
        }
        return false
    }
    
    static func healerChooseHealing() -> Bool {
        var choiceIsEmpty = true
        
        while choiceIsEmpty == true {
            if let choicePrompt = readLine() {
                if choicePrompt == "" {
                    print ("You need to make a decision")
                } else  if choicePrompt == "1" {
                    choiceIsEmpty = false
                    return true
                }
                return false
            }
        }
    }
    
    func checkIfChraracterIsDead(index: Int) -> Bool {
        
        if self.playerCharactersLife[index] <= 0 {
            return true
        }
        return false
    }
    
    static func checkIfPlayerIsDead(fistPlayer: Players, secondPlayer: Players) -> Bool {
        if fistPlayer.playerLife >= 0 || secondPlayer.playerLife >= 0 {
            return false
        }
        return true
    }
    
    
    
    
    
}
