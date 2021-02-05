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
const countPotatoes = (str) => {
  // let str = "";
  console.log((str.match(/potatoes/g) || []).length);
};

countPotatoes("potatoespotatoesobenchickenpotatoes");
// ==================================
// Day 3 again more functions will go here
console.log("============= day 3 ===========");
