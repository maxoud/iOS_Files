/*:
 Copyright (c) 2018 Razeware LLC
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 distribute, sublicense, create a derivative work, and/or sell copies of the
 Software in any work that is designed, intended, or marketed for pedagogical or
 instructional purposes related to programming, coding, application development,
 or information technology.  Permission for such use, copying, modification,
 merger, publication, distribution, sublicensing, creation of derivative works,
 or sale is expressly withheld.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 
 ---
 
# Challenge Time! 😃

1. Create a structure named `Student` with three properties: first name, last name and grade.
2. Create a structure named `Classroom` with two properties: the class name, and an array of students.
3. Create a method that returns the highest grade in the classroom.
*/

struct Student {
    let fName: String
    let lName: String
    var grade: Double
}//end struct Student

struct Classroom {
    let className: String
    var students: [Student]
    
    func highestGrade() -> Double? {
        return students.map {$0.grade} .max()
    }//end func highestGrade
}//end struct Classroom

var classroom = Classroom(
    className: "Usable Clock Design",
    students: [
        Student(fName: "Jesse", lName: "Pinkman", grade: 50),
        Student(fName: "Gregory", lName: "House", grade: 70),
        Student(fName: "Iron", lName: "Man", grade: 99)
    ]
)

classroom.highestGrade()

/*:
Now make an extension on `Classroom` with a method named `curveGrades()`. This method should first find the difference between 100 and the highest grade, and add that amount to all students' scores. Then, it should sort the students array so it is ordered from the student with the highest score, to the one with the lowest.
 
 **Hint**: Remember that structures are value types, so iterating with `for student in students`, and attempting to modify `student`, won't work. (Try it; you'll get an error!) There are other solutions though!
*/

extension Classroom {
    mutating func curveGrades() {
        let curve = 100 - self.highestGrade()!
        var stud: Student
        var studs: [Student] = []
        for student in self.students {
            stud = student
            stud.grade = student.grade + curve
            studs += [stud]
        }//end for
        studs.sort{$0.grade > $1.grade}
        self.students = studs
    }//end func curveGrades()
}//end extension Classroom


//extension Classroom {
//    mutating func curveGrades() {
//        guard let highestGrade = highestGrade() else {
//            return
//        }//end else
//        students = students.map { [curveAmount = 100 - highestGrade] student in
//            var student = student
//            student.grade += curveAmount
//            return student
//        }//end map closure
//            .sorted {$0.grade > $1.grade}
//    }//end func curveGrades
//}//end extension Classroom

classroom.curveGrades()
classroom.students

