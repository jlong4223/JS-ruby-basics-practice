// this is directory that serves as a warm-up zone to go over basics of javascript

const howManySeconds = (hours) => {
  console.log(hours * 3600);
};
howManySeconds(2);
// =====================================
const giveMeSomething = (a) => {
  console.log("something " + a);
};
giveMeSomething("belongs to jared");

// create function that returns amt of potatos in a string
// TODO transfer this one to ruby
const countPotatoes = (str) => {
  // let str = "";
  console.log((str.match(/potatoes/g) || []).length);
};

countPotatoes("potatoespotatoesobenchickenpotatoes");
// ==================================

// reversing a word
function reverseWord(word) {
  console.log(word.split("").reverse().join(""));
}
reverseWord("word");

// ==================================
// searching for an age
function searchForAge(age) {
  let ages = [1, 2, 5, 657, 45, 23];
  if (ages.includes(age)) {
    console.log(`${age} is in the array`);
  } else {
    console.log(`${age} is not in the array`);
  }
}
searchForAge(3);

// =========================================
// given arguments, name, value (key-value pair), return an obj with the name and value as key-value pairs in the object

function addName(name, value) {
  const entries = new Map([[name, value]]);
  // below will take an array and turn it into an object
  const object = Object.fromEntries(entries);
  console.log("person:", object);
}
addName("jared", 25);

// =======================================
// write a function that multiplies values in an array

function multiplyArray() {
  let sum = 1;
  let array = [1, 2, 3];

  for (let i = 0; i < array.length; i++) {
    sum = sum * array[i];
  }
  console.log(sum);
}

multiplyArray();

// ========================================
// Every day you rent the car costs $40. If you rent the car for 7 or more days, you get $50 off your total. Alternatively, if you rent the car for 3 or more days, you get $20 off your total.

function rentalCarCost(d) {
  if (d >= 7) {
    return d * 40 - 50;
  } else if (d >= 3 && d < 7) {
    return d * 40 - 20;
  } else if (d < 7 && d < 3) {
    return d * 40;
  }
}

console.log("rental car cost: " + rentalCarCost(2));

// Create a function that gives a personalized greeting. This function takes two parameters: name and owner.
function greet(name, owner) {
  console.log(name === owner ? "Hello Boss" : "Hello Guest");
}

greet("Jared", "Jeffrey");
