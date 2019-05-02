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

 Create a class named `Animal` that has…
1. a single stored property named `name`, that is a `String`
2. a required initializer that takes `name` as a parameter
3.  a function `speak()` that does nothing.
*/

class Animal {
    var name: String
    
    func speak() {
        
    }//end func speak()
    
    required init(name: String) {
        self.name = name
    }//end init
}//end class Animal

/*:
 Create a class named `Dog` that…
1. inherits from `Animal`
2. has a property that stores how many tricks it has learned
3. implements the required initializer, defaulting the trick count to `0`, and calling `speak()` at the end
4. overrides the function `speak()` to greet you and says its name
*/

class Dog: Animal {
    var trickCount: Int
    
    convenience required init(name: String) {
        self.init(name: name, trickCount: 0)
    }//end init
    
    override func speak() {
        print("Woof woof! The name is \(name)! Don't forget to dogument your code!")
    }
    
    init(name: String, trickCount: Int) {
        self.trickCount = trickCount
        super.init(name: name)
        speak()
    }
}//end class Dog

Dog(name: "Bernard")

/*:
 Add a second (non-required) initializer to `Dog` that takes both the `name` and `numTricksLearned` as parameters. Then call this initializer from the required initializer.
*/

/*:
 In an extension, add a convenience initializer to `Dog` that defaults the dog's name to your favorite dog's name, with however many tricks the dog has learned.
*/
extension Dog {
    convenience init(trickCount: Int = 4) {
        self.init(name: "Max", trickCount: trickCount)
    }
}//end extension Dog

Dog().trickCount
