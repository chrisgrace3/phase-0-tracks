var colors = ["blue", "green", "red", "indigo"];
var horses = ["Duke", "Lucky", "Ed", "Spirit"];

colors.push("orange");
horses.push("Chief");

console.log(colors);
console.log(horses);

horseStable = {}
for (var i = 0; i < colors.length; i++) {
	horseStable[horses[i]] = colors[i]
}
console.log(horseStable)
