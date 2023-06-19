
//-----------------------      9          -------------

function submitButton(){
  const text = document.querySelector('.js-name-input');
   document.querySelector('.js-message-name')
   .innerHTML = `Your Name Entered is : ${text.value}`;
}
function enterText(event){
  if(event.key === 'Enter'){
   const text = document.querySelector('.js-name-input');
   document.querySelector('.js-message-name')
   .innerHTML = `Your Name Entered is : ${text.value}`;
  }
}


// ---------------------9h



