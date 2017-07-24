// write a function that takes an array of words or phrases and returns the
// longest word or phrase in the array. So if we gave your function the array of
// ["long phrase","longest phrase","longer phrase"], it would return "longest phrase".

// input will be an array of indeterminate length
// we will use a for loop that will loop through each word in the array
// we will establish a new variable that will be assigned to whichever word
// is the longest
//

function longestPhrase(array) {
var longestPhrase = ""
  for (var i = 0; i < array.length; i++) {
  if (array[i].length > longestPhrase.length) { longestPhrase = array[i]
  }
}
console.log(longestPhrase)
}

// ******DRIVER CODE***********

longestPhrase(["big", "bigger", "biggestest"] )
