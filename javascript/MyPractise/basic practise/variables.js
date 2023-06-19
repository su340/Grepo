// Types of 3 variable Declarations

// ------------------------------------------------------------------
// using 'var' Keyword. value can be re-assing
var variableName = 'Welcome to variables';
console.log(variableName);
console.log(typeof variableName);

// -------------------------------------------------------------------
// using 'let' Keyword. Value can be re-assing
let sum ='hi';
// the value of sum variable is changable later in the program
sum = 'bye';
console.log(sum);

// --------------------------------------------------------------------
// In console '' means print the statement where as no '' means it will just call the variable 
let kyu = 'dog';
console.log('hello',kyu , 'welcome');


// --------------------------------------------------------------------
// using 'const' Keyword
// once the value assing to const variale, its fixed can't be re-assing again

const dec = 'sameeha';
console.log('Hello',dec); 

// --------------------------------------------------------------------
// `Backtics` should have '${}'.  ex :  console.log('Hello',${required variablename})

const kya = `fish`;
const bol = `hello ${kya}  Welcome`;
console.log(bol);

// ---------------------------------------------------------------------
// lets try to avoid one step in `` in the above example

const tum = 'octupus';
console.log(`hello ${tum}  welcome`);


// ---------------------------------------------------------------------
// another try with the same example
const tumhara = `Jelly fish`;
console.log('hello', tumhara , 'welcome');

// -----------------------------------------------------------------------
// if suppose I want to try the above example printing using `` then 

const lelo = 'price';
console.log(`hello ${lelo} lelo faide mei rehte`);

// -----------------------------------------------------------------------
// lets try using numbers

let cu = `${2+2}`;
console.log('Hello', cu);
console.log(typeof cu);

// ------------------------------------------------------------------------
// lets try Arrays*******
//'let' keyword + Array. Value can be re-assing

let mera = [('aslam,sameeha,kya baat hai')];
console.log('Hell0',mera);
console.log(typeof mera);

// -----------------------------------------------------------------------





