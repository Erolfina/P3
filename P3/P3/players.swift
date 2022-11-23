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
    
     var charactersType: [Category] = []
     var charactersName: [String] = []
     var charactersWeapon: [String] = []
     var charactersWeaponDamages: [Int] = []
     var charactersHealingPoint: [Int] = []
     var charactersLife: [Int] = []
     var playerLife: Int = 0
    
     static var nameOfCharacter: String = ""
     var healingCounter = [0,0,0]
     var damagesGivenCounter = [0,0,0]
    
    
    
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
                    player.charactersType.append(Category.warrior)
                    player.charactersWeapon.append(warrior.weapon)
                    player.charactersWeaponDamages.append(warrior.weaponDamages)
                    player.charactersHealingPoint.append(warrior.healingPoints)
                    player.charactersLife.append(warrior.characterPointsOfLife)
                    print ("What's the name of this warrior?")
                    Players.chooseNameOfCharacters(player: player, firstPlayer: firstPlayer, secondPlayer: secondPlayer)
                    numberOfCharacter += 1
                case 2:
                    player.charactersType.append(Category.magus)
                    player.charactersWeapon.append(magus.weapon)
                    player.charactersWeaponDamages.append(magus.weaponDamages)
                    player.charactersHealingPoint.append(magus.healingPoints)
                    player.charactersLife.append(magus.characterPointsOfLife)
                    print ("What's the name of this magus?")
                    Players.chooseNameOfCharacters(player: player, firstPlayer: firstPlayer, secondPlayer: secondPlayer)
                    numberOfCharacter += 1
                case 3:
                    player.charactersType.append(Category.dwarf)
                    player.charactersWeapon.append(dwarf.weapon)
                    player.charactersWeaponDamages.append(dwarf.weaponDamages)
                    player.charactersHealingPoint.append(dwarf.healingPoints)
                    player.charactersLife.append(dwarf.characterPointsOfLife)
                    print ("What's the name of this dwarf?")
                    Players.chooseNameOfCharacters(player: player, firstPlayer: firstPlayer, secondPlayer: secondPlayer)
                    numberOfCharacter += 1
                case 4:
                    player.charactersType.append(Category.colossus)
                    player.charactersWeapon.append(colossus.weapon)
                    player.charactersWeaponDamages.append(colossus.weaponDamages)
                    player.charactersHealingPoint.append(colossus.healingPoints)
                    player.charactersLife.append(colossus.characterPointsOfLife)
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
                    player.charactersName.append(nameOfCharacter)
                    print ("\(nameOfCharacter) has been added to your team!")
                    characterNameIsEmpty = false
                }
            }
        }
    }
    
       static func characterNameAvailaible(firstPlayer: Players, secondPlayer: Players, nameChosen: String) -> Bool {
        
        if firstPlayer.charactersName.contains(nameChosen) || secondPlayer.charactersName.contains(nameChosen) {
            print("This is the name of another hero! Please choose another one!")
            return false
        }
        return true
    }
        
    
    //calculate the initial amount of Player's point of life by additionning Characters' life points
    func setupPlayerPointsOfLife() -> Int {
        var additionOfCharacterPointOfLife = 0
        
       for index in 0..<self.charactersLife.count {
            additionOfCharacterPointOfLife += self.charactersLife[index]
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
        
        for index in 0..<self.charactersLife.count {
            if self.charactersLife[index] <= 0 {
                return true
            }
        }
        return false
    }
    
    static func checkIfPlayerIsDead(fistPlayer: Players, secondPlayer: Players) -> Bool {
        if fistPlayer.playerLife <= 0 || secondPlayer.playerLife <= 0 {
            return true
        }
        return false
    }
    
    
    
    
    
}
