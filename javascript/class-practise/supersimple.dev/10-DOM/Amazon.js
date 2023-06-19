
//------------------------------------------

function handleCostKeyDown(event){
  if(event.key === 'Enter'){   //Event of (keyboard ==> Enter)
    calculateTotal();
}
}

function calculateTotal(){
  const inputEle = document.querySelector('.js-amount'); //selecting the individual Elemnt "the input Box"
  //converting the money into cents by * 100
  let cost =Number(inputEle.value)*100; //storing the value of the input box; DOM automatically converts the value into String,using Built-in fucntion ,manually define "Number"

  if(cost<4000 ){ 
  cost = cost + 1000;
  }
  document.querySelector('.js-total-cost')
  .innerHTML = `${cost/100}`;
}

//-----------------------------

String(25)
console.log('25'-10); //JS automatically converts the string into a number
                      //Ex of Typre Coersion || automatic type conversion

String(25)
console.log(typeof(25));
console.log(25-10);

//-------------------------------