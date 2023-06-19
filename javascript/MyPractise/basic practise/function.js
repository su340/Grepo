
// ------------Function Declaration------------

// Addition
function addo(num)
{
  console.log('HI');
  return num+num;
}
const result = addo(10);
console.log(result);

// Square
function square(num)
{
  return num*num;
}
const result2 = square(10);
console.log(result2);

// ---------------------------function Expression-------------------
 
const subs = function(num)
             {
              return num - num;
             }
const result3 = subs(30);
console.log(result3);

// using 2 values

const div = function(num1, num2)
            {
              return num1/num2;
            }
const result4 = div(25,5);
console.log(result4);

// ------------------------------Arrow function----------------------

// 3 num addition
const sum = (num1,num2,num3) => 
{
  return num1 + num2 + num3;
}
const result5 = sum(100,1232,1241243);
console.log(result5);

// 3 numbers multiplication

const mul = (num1,num2,num3)=>
{
  return num1*num2/num3;
}
const result6 = mul(12,3,8);
console.log(result6);

// ----------------------Function constructor---------------


// ---------------These were the three ways of declaring a function-----------------
// Have to work on constructor function





