struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}//end struct Grade

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }//end init
}//end class Person


class Student: Person {
    var grades: [Grade] = []
}//end class Student

let jon = Person(firstName: "Jon", lastName: "Snow")
let jane = Student(firstName: "Jane", lastName: "Summer")

jon.firstName
jane.firstName

let historyGrade = Grade(letter: "B", points: 9, credits: 3)
jane.grades.append(historyGrade)

class SchoolBandMember: Student {
    var minimumPracticeTime = 2
}//end class SchoolBandMember

class StudentAthlete: Student {
    var isEligible: Bool {
        return grades.filter{ $0.letter == "F" }.count < 3
    }//end var isEligible
    override var grades: [Grade] {
      didSet {
            if !isEligible {
                print("It's time to study!")
            }
        }
    }//end override var grades
}//end class StudentAthlete

let jessy = SchoolBandMember(firstName: "Jessy", lastName: "Catterwaul")
let marty = StudentAthlete(firstName: "Marty", lastName: "McWolf")

let array = [jon, jane, jessy, marty]

let student = marty as Student
let athlete = student as! StudentAthlete

let utterFailureGrade = Grade(letter: "F", points: 0, credits: 0)
athlete.grades.append(utterFailureGrade)
athlete.grades.append(utterFailureGrade)
athlete.grades.append(utterFailureGrade)

func getEveningActivity(student: Student) -> String {
    if let bandMember = student as? SchoolBandMember {
        return "Practicing for at least \(bandMember.minimumPracticeTime)"
    } else {
        return "Hitting the books!"
    }//end else
}//end getEveningActivity

getEveningActivity(student: jessy)
getEveningActivity(student: jane)
