class Person {
    var firstName: String
    var lastName: String
    
    required init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }//end init
}//end class Person

class Student: Person {
    var grades: [String] = []
}

extension Student {
    convenience init(transfer: Student) {
        self.init(firstName: transfer.firstName, lastName: transfer.lastName)
        grades = transfer.grades
    }
}//end class Stuednt

class StudentAthelete: Student {
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String]) {
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
    }
    
    required convenience init(firstName: String, lastName: String) {
        self.init(firstName: firstName, lastName: lastName, sports: [])
    }
}//end class StudentAthlete

StudentAthelete(firstName: "Daniel", lastName: "Ruttiger", sports: ["Foosball", "Volleyball"])
StudentAthelete(firstName: "Bernie", lastName: "Kosar")
