/*
struct Actor {
    let name: String
    var filmography: [String] = []
    
    mutating func signOnForSequel(franchiseName: String) {
        filmography.append("Upcoming \(franchiseName) sequel")
    }//end mutating func signOnForSequel
}//end struct Actor

var gotgStar = Actor(name: "Zoe Saldana", filmography: ["Guardians of the Galaxy"])
gotgStar.filmography.append("Avatar")
var starTrekStar = gotgStar
starTrekStar.filmography += ["Star Trek"]

var avatarStar = starTrekStar
for franchiseName in avatarStar.filmography {
    avatarStar.signOnForSequel(franchiseName: franchiseName)
}//end for

avatarStar.filmography

starTrekStar.filmography

gotgStar.filmography


*/

class Actor {
    let name: String
    var filmography: [String] = []
    
    init(name: String, filmography: [String]) {
        self.name = name
        self.filmography = filmography
    }//end init
    
    func signOnForSequel(franchiseName: String) {
        filmography.append("Upcoming \(franchiseName) sequel")
    }//end mutating func signOnForSequel
    
}//end struct Actor

let gotgStar = Actor(name: "Zoe Saldana", filmography: ["Guardians of the Galaxy"])
gotgStar.filmography.append("Avatar")
let starTrekStar = gotgStar
starTrekStar.filmography += ["Star Trek"]

var avatarStar = starTrekStar
let alienStar = Actor(name: "someone", filmography: ["Alien"])

for franchiseName in avatarStar.filmography {
    avatarStar.signOnForSequel(franchiseName: franchiseName)
}//end for

avatarStar.filmography

starTrekStar.filmography

gotgStar.filmography

alienStar.filmography
