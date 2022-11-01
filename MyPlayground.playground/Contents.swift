import UIKit


class MyString {
    
    /// elemt 1 est de type string et elemt2 aussi , cette function va concatener 2 trucs
    func concateString(element1: String, element2: String){
        print(" \(element1) et \(element2) ")
    }
    
    func containAz(element: String) -> Bool {
        if element.contains("z") {
            //blabal11111
        
        }else{
            //balbla
            
        }
        return true
        
    }
    
    func concateStringv2(element1: String, element2: String) -> String {
        return "\(element1) et \(element2)"
    }
    
    
}

    

var sentence1 = " Papa Adore le chocloat"
var sentence2 = " maman aime le chorizo"
var myString = MyString()

myString.concateString(element1: sentence1, element2: sentence2)

if myString.containAz(element:sentence1) {
    print("ma chaine contient un Z")
}else {
    print("pas de z ....:/")
}

print("ma phrase cocnat est : \(myString.concateStringv2(element1: sentence1, element2: sentence2)) ")


