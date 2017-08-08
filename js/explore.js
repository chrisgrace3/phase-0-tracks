// reverse function should work using the string index
// take a string as an input and run a FOR loop
// create an empty string variable to add the letters in from the word backwards
// in the for loop, create variable that will increment backwards from length of string to 0
// continue the loop until is is equal to 0
// continually subtract one from the increment variable and add the letter at
// the current index as you count down.


function reverse(word) {
  var reverseWord = "";
  for (var i = word.length - 1; i >= 0; i--) {
    reverseWord += word[i];
  }
  return reverseWord;
}

var word = reverse("WORLD")

console.log(word)
