::tsc::
::sc::
InputBox, OutputVar, title, enter a name?,,,,,,,,test
SendRaw, tsc %OutputVar%.ts && node %OutputVar%.js
return

::ts.fd::
::ts.fdefault::
::ts.funcd::
::ts.funcdefault::
::ts.functiond::
::ts.functiondefault::
Var = 
(
function buildName(firstName: string, lastName = "Smith") {
    // ...
}
)
code(Var)
return

::ts.f?::
::ts.func?::
::ts.function?::
Var = 
(
function buildName(firstName: string, lastName?: string) {
    // ...
}
)
code(Var)
return

::ts.func::
::ts.function::
::ts.f::
Var = 
(
function add(x: number, y: number): number {
    return x + y;
}
)
code(Var)
return


::ts.var::
::ts.let::
Var = 
(
let decLiteral: number = 6;
)
code(Var)
return

::ts.tuple::
Var = 
(
let x: [string, number];
x = ['hello', 10]; 
console.log(x[0].substr(1));
)
code(Var)
return

::ts.class::
Var = 
(
class Greeter {
    greeting: string;
    constructor(message: string) {
        this.greeting = message;
    }
    greet() {
        return "Hello, " + this.greeting;
    }
}

let greeter = new Greeter("world");

let button = document.createElement('button');
button.textContent = "Say Hello";
button.onclick = function() {
    alert(greeter.greet());
}

document.body.appendChild(button);
)
code(Var)
return


::ts.type::
Var = 
(
function Greeter(greeting: string) {
    this.greeting = greeting;
}
)
code(Var)
return

::ts.interface::
Var = 
(
class Student {
    fullName: string;
    constructor(public firstName, public middleInitial, public lastName) {
        this.fullName = firstName + " " + middleInitial + " " + lastName;
    }
}

interface Person {
    firstName: string;
    lastName: string;
}

function greeter(person : Person) {
    return "Hello, " + person.firstName + " " + person.lastName;
}

let user = new Student("Jane", "M.", "User");

document.body.innerHTML = greeter(user);
)
code(Var)
return

::ts.T::
Var = 
(
class Greeter<T> {
    greeting: T;
    constructor(message: T) {
        this.greeting = message;
    }
    greet() {
        return this.greeting;
    }
}

let greeter = new Greeter<string>("Hello, world");

let button = document.createElement('button');
button.textContent = "Say Hello";
button.onclick = function() {
    alert(greeter.greet());
}

document.body.appendChild(button);
)
code(Var)
return

::ts.inher::
Var = 
(
class Animal {
    constructor(public name: string) { }
    move(distanceInMeters: number = 0) {
        console.log(`${this.name} moved ${distanceInMeters}m.`);
    }
}

class Snake extends Animal {
    constructor(name: string) { super(name); }
    move(distanceInMeters = 5) {
        console.log("Slithering...");
        super.move(distanceInMeters);
    }
}

class Horse extends Animal {
    constructor(name: string) { super(name); }
    move(distanceInMeters = 45) {
        console.log("Galloping...");
        super.move(distanceInMeters);
    }
}

let sam = new Snake("Sammy the Python");
let tom: Animal = new Horse("Tommy the Palomino");

sam.move();
tom.move(34);
)
code(Var)
return