//task 1
struct User {
    var name: String
    var stepsToday: Int
    
    init(name: String, stepsToday: Int) {
        self.name = name
        self.stepsToday = stepsToday
    }
    
    init?(optName: String?, optStepsToday: Int?) {
        if let thename = optName,
        let theStepsToday = optStepsToday {
            self.name = thename
            self.stepsToday = theStepsToday
        } else {
            return nil
        }
    }
}

func stepsWinner (users: [User?]) -> User? {
  var topCompetitor: User?
    for user in users {
        guard let unwrapped = user else {
            continue
            }
        if unwrapped.stepsToday > maxSteps {
            maxSteps = unwrapped.stepsToday
            topCompetitor = unwrapped
            continue
        }
    }
    return topCompetitor
}

let user1 = User(name: "Steaven", stepsToday: 9000)
let user2 = User(name: "Josh", stepsToday: 10000)
let user3 = User(name: "Marta", stepsToday: 9000)
let user4 = User(optName: "Alex", optStepsToday: 11000)

let arrUsers = [user1, user2, user3, user4]
var maxSteps: Int = 0

if let winner = stepsWinner(users: arrUsers) {
    print(winner.name)
}

//task 2
enum Suit {
    case clubs
    case diamonds
    case hearts
    case spades
}

func getFortune(cardSuit: Suit) {
    switch cardSuit {
    case .clubs:
        print("Unluck")
    case .diamonds:
        print("Wealth")
    case .hearts:
        print("Friendship")
    case .spades:
        print("Troubles")
    }
}

getFortune(cardSuit: .hearts)
getFortune(cardSuit: .diamonds)

