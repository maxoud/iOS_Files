protocol Aloof {
    var name: String {get}
}//end protocol Aloof

extension Aloof {
    var greeting: String {
        return "What's popping master?"
    }
}

protocol Animal {
    var name: String {get}

    init(name: String)
    func speak()
    
}//end class Animal

protocol AloofAnimal: Aloof, Animal {}//end protocol AloofAnimal

extension AloofAnimal {
    func speak() {
        print("\(greeting) Please leave me alone. I must look at this wall!")
    }//end func speak
}

class Dog: Animal {
    let name: String
    var tricksLearnedCount: Int
    
    init(name: String, tricksLearnedCount: Int) {
        self.tricksLearnedCount = tricksLearnedCount
        self.name = name
    }//end init
    
    convenience required init(name: String) {
        self.init(name: name, tricksLearnedCount: 0)
    }//end init
    
    func speak() {
        print("Bow wow! My name is \(name)")
    }//end func speak
}//end class Dog

class Cat {
    let name: String
    required init(name: String) {
        self.name = name
    }//end init
}//end class Cat

extension Cat: AloofAnimal {
}//end extension Cat

let animals: [Animal] = [Dog(name: "Fang"), Cat(name: "Mr. Midnight")]
for animal in animals {
    animal.speak()
}

