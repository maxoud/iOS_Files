struct Wizard {
    static var commonMagicalIngredients: [String] {return [
        "Poly Juice",
        "Gatorade",
        "Egg Shells",
        "The Force"
        ]}
    var firstName: String {
        willSet {print("\(firstName) will be set to \(newValue)")}
        didSet {
            if firstName.contains(" ") {
                print("No spaces allowed! \(firstName) is not a first name. Reverting name to \(oldValue)")
                firstName = oldValue
            }
        }
    }
    var lastName: String
    
    var fullName: String {
        get {return "\(firstName) \(lastName)"}
        set {
            let nameSubstrings = newValue.split(separator: " ")
            
            guard nameSubstrings.count >= 2 else {
                print("\(newValue) is not a full name.")
                return
            }
            let nameStrings = nameSubstrings.map(String.init)
            firstName = nameStrings.first!
            lastName = nameStrings.last!
        }
    }
    
    lazy var magicalCreature = "Hiha"
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var wizard = Wizard(firstName: "Gandalf", lastName: "Greyjoy")
wizard.firstName = "Hermi one"
wizard.lastName = "Kenobi"
wizard.fullName

wizard.fullName = "SeverusWenderlich"
wizard.fullName
wizard.fullName = "Severus Meverus Wenderlich"
wizard.fullName
wizard.fullName = "Doctor X"
wizard.fullName
wizard.magicalCreature

Wizard.commonMagicalIngredients

//let myString = "Severus Meverus Wenderlich"
//let subs = myString.split(separator: " ")
//print(subs)

