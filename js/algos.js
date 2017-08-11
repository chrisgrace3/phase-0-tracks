// write a function that takes an array of words or phrases and returns the longest
// word or phrase in the array. So if we gave your function the array of
// ["long phrase","longest phrase","longer phrase"], it would return "longest phrase".

function longestPhrase(phrases) {
  var newPhrase = "";
  for (var i = 0; i < phrases.length; i++) {
    if (phrases[i].length > newPhrase.length ) {
      newPhrase = phrases[i];
    }
  }
  return newPhrase;
}

var collectionOfPhrases = ["long phrase", "longest phrase","longer phrase"];

console.log(longestPhrase(collectionOfPhrases))
