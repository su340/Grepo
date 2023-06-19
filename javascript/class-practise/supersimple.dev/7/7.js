
// --------------------------7a

function greeta(){
  console.log('Hello');
};

greeta();
greeta();
greeta();

// --------------------------7b

function greetb(name){
  console.log(`Hello ${name}`);
};

greetb('sameeha');

// --------------------------7c

function greetc(name){
 if(!name){
  console.log('Hi there')
 }else{
  console.log(`Hello ${name}`)
 }
}
greetc('sumsam');

// --------------------------7d

function celciusTemp(num){
  return (num*9/5)+32;
}

console.log(celciusTemp(25));

// --------------------------7e

function fahrenTemp(num){
  return (num -32)*5/9;
};

console.log(fahrenTemp(86));

// --------------------------7f

function celciusTemp(celnum){
  return (celnum*9/5)+32;
};

function fahrenTemp(fahrennum){
  return (fahrennum -32)*5/9
};

function convertTemp(degrees,unit){
  if(unit === 'C'){
    return result = `${celciusTemp(degrees)} F`;
  }else if(unit === 'F'){
    return result = `${fahrenTemp(degrees)} C`;
  }
}
console.log(convertTemp(25,'C'));
console.log(convertTemp(86,'F'));

// --------------------------7g