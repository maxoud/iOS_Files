enum Weekday: CaseIterable {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
    
    mutating func advance(by dayCount: UInt) {
        let indexOfToday = Weekday.allCases.firstIndex(of: self)!
        let indexOfAdvancedDay = indexOfToday + Int(dayCount)
        
       self = Weekday.allCases[indexOfAdvancedDay % Weekday.allCases.count]
    }//end func advance
}//end enum Weekday

Weekday.allCases
var weekday: Weekday = .tuesday
weekday.advance(by: 6)

struct Time {
    var day: Weekday
    var hour: UInt
    
    init(day: Weekday, hour: UInt = 0) {
        self.day = day
        self.hour = hour
    }//end init
    
    mutating func advance(byHours hourCount: UInt) {
        self = self.advanced(byHours: hourCount)
    }//end func advance
    
    func advanced(byHours hourCount: UInt) -> Time {
        let (dayCount, hour) = (self.hour + hourCount).quotientAndRemainder(dividingBy: 24)
        var time = self
        time.day.advance(by: dayCount)
        time.hour = hour
        return time
    }//end func advanced
}//end struct Time

let time = Time(day: .monday)
var advancedTime = time.advanced(byHours: 24*3 + 5)
advancedTime.advance(byHours: 30)


enum Mathematics {
    static func getLength(x: Double, y: Double) -> Double {
        return (x*x+y*y).squareRoot()
    }//end func getLength
}

Mathematics.getLength(x: 3, y: 4)
