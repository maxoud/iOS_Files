class Person {
    let name: String
    weak var bestBuddy: Person?
    
    init(name: String) {
        self.name = name
    }//end init
    
    deinit {
        print("The memory for \(name) has been deallocated")
    }
    
}//end class Person

//var person: Person? = Person(name: "Thanos Jones")
//person = Person(name: "Ultron Avengerspour")
//person = nil

var hero: Person? = Person(name: "War Hero")
var loki: Person? = Person(name: "Loki Moakley")

loki?.bestBuddy = hero
hero?.bestBuddy = loki

loki = nil
//hero?.bestBuddy = Person(name: "Russ Ross")
hero = nil
