// reverse function should work using the string index.
// take a string as an input and loop through each letter starting at the end.
// create an empty string variable to add the letters to.
// in the loop, create variable that will increment backwards from length of string to 0.
// continue the loop until until each letter has been used.

function reverse(word) {
  var reverseWord = "";
  for (var i = word.length - 1; i >= 0; i--) {
    reverseWord += word[i];
  }
  return reverseWord;
}

var word = reverse("Chicago")

if (1000 > 2) {
  console.log(word)
}
