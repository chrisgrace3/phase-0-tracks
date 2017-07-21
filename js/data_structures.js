var colors = ["red", "green", "blue", "white"];
var names = ["Black Beauty", "Seabuiscuit", "Ed", "Epona"];
var horses = ["Black Beauty": "red"]
colors.push("orange");
names.push("Horsey McHorseface");
/*
 add code that will use your two arrays to create an object.
 The keys of your object should be horse names, and the values
 should be colors. Your solution should be something that would
 work for any number of
 colors/horses, as long as the two arrays are the same length.
*/


for (var i = 0; i < names.length; i++) {
    console.log("The name of your horse is " + names[i] + " and it is a gorgeouse shade of " + colors[i]);
}

hello
