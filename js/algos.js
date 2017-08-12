function longestPhrase(phrases) {
  var newPhrase = "";
  for (var i = 0; i < phrases.length; i++) {
    if (phrases[i].length > newPhrase.length ) {
      newPhrase = phrases[i];
    }
  }
  return newPhrase;
}

// Driver code to test longestPhrase function
var collectionOfPhrases = ["long phrase", "longest phrase","longer phrase"];
console.log(longestPhrase(collectionOfPhrases))
