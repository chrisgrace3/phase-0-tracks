//release 0

var colors = ["red", "green", "blue", "white"];
var names = ["Black Beauty", "Seabuiscuit", "Ed", "Epona"];
colors.push("orange");
names.push("Horsey McHorseface");

//release 1

/*colors.push("green")- if trying to execute this after
adding the code our hash will not be populated
because the length of names
and the length of colors are not equal. the program
will print out the message in the conditional statement.
*/
var keysAndValues = [names, colors];
var horses = {}
if (names.length != colors.length) {
	console.log("Please make sure you are not missing anything.")
} else {
	for (var y = 0; y < names.length; y++) {
		horses[names[y]] = colors[y];
		keysAndValues.push(horses)
	}
}
console.log(horses);

//release 2
function Car(brand, mileage, hybrid, singleOwner, color) {
	this.brand = brand;
	this.mileage = mileage;
	this.hybrid = hybrid;
	this.singleOwner = singleOwner;
	this.color = color;
	this.startEngine = function() {console.log("Vruum! Vruum!");} ;
	console.log("This could be your new car: ")
}
// driver code
console.log("Hey, mister auto-dealer. I need a new car.");
var car = new Car("Honda", 15000, true, false, "red");
console.log(car);
console.log("Check out how she sounds: ");
car.startEngine();
console.log("Like it?");
console.log("Hey, mister auto-dealer. I need a new car.");
var otherCar = new Car("Toyota", 50000, false, true, "white");
console.log(otherCar);
