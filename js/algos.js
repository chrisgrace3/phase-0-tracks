function findLongestPhrase(phrases) {
  var longestPhrase = phrases[0];
  for (var i = 0; i < phrases.length; i++) {
    if (phrases[i].length > longestPhrase.length ) {
      longestPhrase = phrases[i];
    }
  }
  return longestPhrase;
}

function sharePair(firstObject, secondObject) {
  keysFirst = Object.keys(firstObject);
  keysSecond = Object.keys(secondObject);
  for (var i = 0; i < keysFirst.length; i++) {
    newKey = keysFirst[i]
    if (firstObject[newKey] == secondObject[newKey]) {
      return true;
    }
  }
  return false;
}

// ******DRIVER CODE***********

// Release 1: Find a Key-Value Match
console.log(sharePair({name: "Steven", age: 54}, {name: "Tamir", age: 54})); // true
console.log(sharePair({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));  //  true


// Release 0: Find the longest phrase
console.log(findLongestPhrase(["big", "bigger", "biggestest", "even more bigger than biggestest"]));
console.log(findLongestPhrase(["longest phrase in the world!", "nope", "not this one"]));
console.log(findLongestPhrase(["long phrase","longest phrase","longer phrase"]));
