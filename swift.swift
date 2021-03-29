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