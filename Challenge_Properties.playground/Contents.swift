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
Create a struct named `Temperature` with properties for degrees in both Celsius and Fahrenheit, as `Double`s.
* _Hint 1_: One property must be stored, but the other can be computed. They should always stay in sync.
* _Hint 2_: To convert from Fahrenheit to Celsius, subtract 32, then divide by 1.8.
*/
// A little clean-up for myself!
typealias Degrees = Double

struct Temperature {
    
    var Celsius: Degrees
    var Fahrenheit: Degrees {
        get {
            let f = 1.8*Celsius + 32
            if f > 100 {
                print("The temperature is currently \(f) degrees Fahrenheit outside!")
            }//end if
            return 1.8*Celsius + 32
        }//end get
        set {
            if newValue > 100 {
                print("The temperature is currently \(newValue) degrees Fahrenheit outside!")
            }//end if
            Celsius = (newValue - 32)/1.8
        }//end set
    }//end var Fahrenheit
//
//    init(Celsius: Degrees) {
//        self.Celsius = Celsius
//    }//end init
}//end struct Temperature

//: Modify the Fahrenheit property to print out a warning message if it is set to above 100 degrees.
// Added the didSet property to the above code
var temperature = Temperature(Celsius: 200)
temperature.Fahrenheit
temperature.Fahrenheit = 100
temperature.Celsius
temperature.Celsius = 400
temperature.Fahrenheit
