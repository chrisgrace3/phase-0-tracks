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

function Car(year, make, model, isNew) {
  this.year = year;
	this.make = make;
	this.model = model;
	this.isNew = isNew;
	this.honk = function () { console.log("Beep beep!");};
}

var car = new Car(1989, "Chevy", "Celebrity", false)
var anotherCar = new Car(2006, "Ford", "Taurus", false)
console.log(anotherCar.make)
console.log("Unfortunately my car is a", car.year, car.make, car.model)
