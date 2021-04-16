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

// =========================================
// square every digit of a number and concatenate them
function squareDigits(num) {
  return Number(
    ("" + num)
      .split("")
      .map(function (val) {
        return val * val;
      })
      .join("")
  );
}

console.log(squareDigits(3212));

// =====================================
// Complete the function so that it finds the mean of the three scores passed to it and returns the letter value associated with that grade.

function getGrade(s1, s2, s3) {
  let avg = (s1 + s2 + s3) / 3;

  console.log(
    avg >= 90 && avg <= 100
      ? "A"
      : avg >= 80
      ? "B"
      : avg >= 70
      ? "C"
      : avg >= 60
      ? "D"
      : "F"
  );
}

getGrade(60, 93, 93);

console.log("switch case below as an alternative to ternary");
function getGradeAgain(s1, s2, s3) {
  var avg = (s1 + s2 + s3) / 3;
  switch (true) {
    case avg >= 90:
      return "A";
    case avg >= 80:
      return "B";
    case avg >= 70:
      return "C";
    case avg >= 60:
      return "D";
    default:
      return "F";
  }
}

console.log(getGradeAgain(60, 93, 93));
// ======================================
// a function that converts a string to uppercase

function makeUpperCase(str) {
  console.log(str.toUpperCase());
}
makeUpperCase("hello");

// ======================================
// make a function that can take any non-negative integer as an argument and return it with its digits in descending order.
function descendingOrder(n) {
  console.log(+("" + n).split("").sort().reverse().join(""));
}
descendingOrder(123453);

// ===================================
// return the sum of all of the positives numbers in the array
let positiveSum = (arr) => {
  sum = arr.reduce((a, b) => {
    return b > 0 ? b + a : a;
  }, 0);
  console.log(sum);
};
positiveSum([3, -1, 3, -10]);

// ==================================
// A hero is on his way to the castle to complete his mission. However, he's been told that the castle is surrounded with a couple of powerful dragons! each dragon takes 2 bullets to be defeated, our hero has no idea how many bullets he should carry.. Assuming he's gonna grab a specific given number of bullets and move forward to fight another specific given number of dragons, will he survive?

// Return True if yes, False otherwise

function hero(bullets, dragons) {
  return bullets >= dragons * 2 ? true : false;
}

console.log(hero(4, 2));

/* - If one of the flowers has an even number of petals and the other has an odd number of petals it means they are in love.

Write a function that will take the number of petals of each flower and return true if they are in love and false if they aren't. */

function lovefunc(flower1, flower2) {
  console.log(flower1 % 2 !== flower2 % 2);
}
lovefunc(2, 6);

// ==================================
// Write function RemoveExclamationMarks which removes all exclamation marks from a given string.

// .filter is going through each element in the string and returning all of them if they do not equal a !

let text = "this! is! a! sentence!";

let removeExcla = text
  .split("")
  .filter((letter) => {
    return letter != "!";
  })
  .join("");

console.log(removeExcla);

// ========================================

// Consider an array/list of sheep where some sheep may be missing from their place. We need a function that counts the number of sheep present in the array (true means present).

// filtering out only the sheep that equal true
function countSheeps(arrayOfSheep) {
  return arrayOfSheep.filter((sheep) => sheep === true).length;
}

console.log(countSheeps([true, false, true, false, true, true]));

// =========================================
// Сalculate how many years ago the father was twice as old as his son (or in how many years he will be twice as old).

function twiceAsOld(dadYearsOld, sonYearsOld) {
  const doubleSonsAge = sonYearsOld * 2;
  console.log("sons age * 2: ", doubleSonsAge);
  let difference =
    doubleSonsAge > dadYearsOld
      ? doubleSonsAge - dadYearsOld
      : dadYearsOld - doubleSonsAge;

  console.log(difference);
}

twiceAsOld(30, 16);

// TODO transfer to ruby, python, & swift?
