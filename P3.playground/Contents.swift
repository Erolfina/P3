import UIKit

var greeting = "Hello, playground"

//
//  main.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-24.
//

import Foundation


class Game {
    /*-----------------------------*/
    /*        PROPERTIES           */
    /*-----------------------------*/
    
    // The Game is composed of two player
    var numberOfPlayer: Int = 2
    // A player = 3 characters
    var player: Any  = []
    
    /*-----------------------------*/
    /*        METHODS              */
    /*-----------------------------*/
    
    //  game starts : if numberOfPlayer == 2 + Player == 3 Character
    func startGame() {
        
    }
    
    //  end of the game : if lifepoints = 0
    func stopGame() {
        
    }

 
    
    
    
}
//Class Player. One Player = 3 Character
class Player {
    var playerName : String
    // check if name exist
    
    var pointsOfLifeOfPlayer : Int{
        get {
            return pointsOfLifeOfCharacter.Dwarf + pointsOfLifeOfCharacter + pointsOfLifeOfCharacter
        }
        set {
        }
    }


    //properties
    var username : String
    var numberOfCharacter = 3
    
}

//List of type of Character possible
enum CharacterType {
    case dwarf
    case warrior
    case magus
    case colossus
}

// Classe Character with their proprieties (type, life, weapon)
class Character{
    //properties
    var type = [CharacterType]
    var weapon : String
    var nameOfCharacter: String
    let pointsOfLifeOfCharacter : Int
}

class Dwarf : Character{
    //properties
    let pointsOfLifeOfDwarf : Int = 50
    let weaponOfDwarf: String = "Axe"
    var description: String{
        return "Sa hache vous infligera beaucoup de dégâts, mais il n'a pas beaucoup de points de vie."
    }
    
}

class Warrior : Character{
    //properties
    let pointsOfLifeOfWarrior : Int = 100
    let weaponOfWarrior: String = "Sword"
    var description: String{
        return "L'attaquant classique. Un bon guerrier !"
    }
}

class Colossus : Character{
    //properties
    let pointsOfLifeofColossus : Int = 300
    let weaponOfColossus: String = "Shield"
    var description: String{
        return "Imposant et très résistant, mais il ne vous fera pas bien mal."
    }
}

class Magus : Character{
    //properties
    let pointsOfLifeOfMagus : Int = 75
    let weaponOfMagus: String = "Wand"
    var description: String{
        return  "Son talent ? Soigner les membres de son équipe."
    }
}

