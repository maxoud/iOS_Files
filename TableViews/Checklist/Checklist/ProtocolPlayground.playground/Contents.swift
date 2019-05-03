import UIKit

protocol Persist {
    func save()
}//end protocol persist

class Monster: Persist {
    func save() {
        print("Monster save")
    }//end func save
}//end class Monster

class Sword: Persist {
    func save() {
        print("Sword save")
    }//end func save
}//end class Sword

class Player {
    
}//end class Player

let monster = Monster()
let sword = Sword()
let player = Player()
let items: [Persist] = [monster, sword]

class GameManager {
    func saveLevel(_ items: [Persist]) {
        for item in items {
            item.save()
        }//end for
    }//end func saveLevel
}//end class GameManager

let gameManager = GameManager()
gameManager.saveLevel(items)
