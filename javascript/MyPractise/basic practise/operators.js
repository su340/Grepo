/*// //  Working with Expressions

                         // ARITHEMATIC OPERATORS
// + operator
var varName = 14;
var anotherNum = 22;
console.log(varName+anotherNum);
console.log(varName+12);
console.log(12+varName+2345653+0.12314-123124+anotherNum);
console.log('45' + '56');

// - operator

console.log(varName - anotherNum);
console.log(anotherNum - varName);
console.log(varName - 0.25);
console.log('varNAme' -  45);// here the interpreter is trying to convert the string to interger which resultas in NAN(not a number)
console.log(12-varName-2345653+0.12314-123124+anotherNum);

// * operator

console.log(varName * anotherNum);
console.log(anotherNum * varName);
console.log(varName * 0.25);
console.log('varNAme' * 45);// here the interpreter is trying to convert the string to interger which resultas in NAN(not a number)
console.log(12*varName*2345653*0.12314-123124*anotherNum);

//  / division

console.log(varName / anotherNum);
console.log(anotherNum / varName);
console.log(varName / 0.25);
console.log('varNAme' / 45);// here the interpreter is trying to convert the string to interger which resultas in NAN(not a number)
console.log(12/varName/2345653/0.12314-123124/anotherNum);

//  % operator ....Getting the Remainder of a division operator

console.log(varName % anotherNum);
console.log(anotherNum % varName);
console.log(varName % 0.25);
console.log('varNAme' % 45);// here the interpreter is trying to convert the string to interger which resultas in NAN(not a number)
console.log(12%varName%2345653%0.12314-123124%anotherNum);
console.log(5%5);
console.log(4%2);

                            //COMPARATIVE OPERATORS-------------


// greatet and less than operator
a = 10 ;
b = 20;
console.log(a>b);
console.log(a<b);
// greater than , less than equal to operator
console.log(a>=b);
console.log(a<=b);

// == opearator....Loose Equality the "EVIL TWINS".. gives results unexpected

// console.log(a=b);...... "=" single equal operators are used to assign only 
console.log(a==b); // loose evil twins is a bad practise and gives unexpected results and may result in errors.
console.log(a!=b);
// strict Equality......JS INTERPRETER CHECKS FOR BOTH DATATYPE AND VALUE AND RETURNS "TRUE" ONLY IF BOTH THE ITEMS ARE MATCHED OR ELSE FALSE.
console.log(a===b); //strict === is a good practise and it compares values and datatypes.
// strict Inequality
console.log(a!==b);

console.log('Hello' == 'Hello');
console.log('HELLO' == 'HelLO');
console.log(2==2);
console.log(5==6);
console.log('2'=='2');
console.log('2'== 2," '2' is abstractly equal to 2");

var myArray = 'abc';
var otherArray = ['abc'];

if(myArray !== otherArray)
  {
    console.log('A');
  }

if(myArray == otherArray)
{
    console.log('B');
}
// --------------------------------------------------------------------
if(2>1) //it will only log on the console if the condition given is true
{
  console.log('2 is greater than 1');
}
else{
  console.log('1 is lesser than 2');
}

// -------------------------------------------------------


var koi = 36345345;
var dekho = 2724734534;

if (koi>dekho)
{
  console.log(koi,'is greater than',dekho);
}

if( koi<dekho)
{
  console.log(dekho, 'is greater than',koi);
}

// -----------------------------------------------------------*/

                      // LOGICAL OPERATORS
/*Three logical operators
1.AND  // all the operand has to be true
2.OR   // atleast one of the operand has to be true
3.NOT */ //it reverses the value

//-------------------------------------------------------------

//AND LOGICAL OPERATOR
console.log(true && true);
console.log(false && true);
console.log(true && true && false);
console.log(5 && false && true && 9);
console.log(-5 && 0.6 && true && 10 && true);

//----------------------------------------------------------------

//OR LOGICAL OPERATOR
console.log(true || true);
console.log(false|| true);
console.log(false || false);
console.log( '5' || true);

//----------------------------------------------------------------

//AND LOGICAL OPERATOR

console.log(!true);
console.log(!false);
console.log(!5);





