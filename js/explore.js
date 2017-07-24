// reverse function should work using the string index
// take a string as an input and runs a FOR loop
// create an empty string variable to add the letters in from the word backwards
// in the for loop, create variable that will incrememnt backwards from length of string to 0
// continue the loop until is is equal to 0
// continually subtract one from the incrememnt variable and add the letter at
// the current index as you count down.


function reverse(word) {
  var reverseWord = "";
  for (var i = word.length - 1; i >= 0; i--) {
    reverseWord += word[i];
  }
  return reverseWord;
}

// *******DRIVER CODE*********

console.log(reverse("hello"))

// => olleh



// DRIVER CODE
var word = reverse("word") == "drow";
console.log(word);
var javaScript = reverse("JavaScript") == "tpircSavaJ";
console.log(javaScript);
