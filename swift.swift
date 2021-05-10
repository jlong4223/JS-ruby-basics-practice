// let is what const is in javascript; var is what let is in javascript
// ========================
func sayName(name: String)-> String{
  return(name)
}
print(sayName(name: "Jared " + "is my name"))

// ========================
// a function that converts a string to uppercase
func upperCase(name: String) -> String{
  let person = name.uppercased()
  return(person)
}

print(upperCase(name: "jared"))

// =========================
// Write function RemoveExclamationMarks which removes all exclamation marks from a given string.

// testing with just a string outside of a function:
/* Test 1) */
var phrase = "The! rain! in! Spain! stays! mainly! in! the! plain!"

let newWord: Set<Character> = ["!"]
phrase.removeAll(where: { newWord.contains($0) })

print(phrase)

/* Test 2) */
var otherPhrase = "The rain in Spain stays mainly in the plain."

let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
otherPhrase.removeAll(where: { vowels.contains($0) })
print(otherPhrase)

// ------- this is the function that removes the character
// $0 is referring to the first argument 
func removeExclamationMarks(word: String) -> String {
  var theword = word
  let newWord: Set<Character> = ["!"]
  theword.removeAll(where: { newWord.contains($0) })

  return(theword)
}

print(removeExclamationMarks(word:("Jared! is! removing! exclamation! characters.!")))

// ========================================
// calculating home office total
// creating an empty array that is expecting integers
var prices = [Int]()

var mouse = 99
var keyboard = 99
var m1_small = 1300
var m1_big = 1900
var moniter = 490
var speakers = 40
var big_battery = 60
var ipads = 600 * 2
var desk = 1400
var old_macs = 1000 * 2
var headset = 20
var mac_cable_adapter = 32 
var mouse_pads = 15 * 2
var camera = 90

// when appending multiple items to array, need to include contentsOf:[items being appended]
prices.append(contentsOf: [mouse, keyboard, m1_big, m1_small, moniter, speakers, big_battery, ipads, desk, old_macs, headset, mac_cable_adapter, mouse_pads, camera])

print(prices)

// adding all the numbers in the array
let total = prices.reduce(0, +)
print("the total is: ", total)

// ============================================
// Сalculate how many years ago the father was twice as old as his son (or in how many years he will be twice as old).

print("=== v1 AGE DIFF: ")

func ageDiff(sonsAge: Int, dadsAge: Int) -> Int{
  let doubledSon = sonsAge * 2

  if(doubledSon > dadsAge){
    return(doubledSon-dadsAge)
  } else{
    return(dadsAge-doubledSon)
  }
}

print(ageDiff(sonsAge: 16, dadsAge: 30))

// ======== ternary with swift:
print("=== v2 AGE DIFF: ")

func ageDiffTwo(sonsAge: Int, dadsAge: Int) -> Int{
  let doubledSon = sonsAge * 2

  let difference = (doubledSon > dadsAge) ? (doubledSon-dadsAge) : (dadsAge-doubledSon)
  
  return(difference)
}

print(ageDiffTwo(sonsAge: 16, dadsAge: 30))

// ===================================
// Create a function that takes 2 positive integers in form of a string as an input, and outputs the sum (also as a string):

// ====
var str = ""
print(str)
// forcing value to be zero if there is not an int in the str
var int = Int(str) ?? 0
print(int)

// ====
func sumString(a: String, b: String) -> String{
  var int = (Int(a) ?? 0) + (Int(b) ?? 0)
  return(String(int))
}

print("sum func: ", sumString(a: "", b: "3"))

