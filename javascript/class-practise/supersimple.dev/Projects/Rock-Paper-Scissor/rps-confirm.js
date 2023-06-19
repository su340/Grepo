let isAutoPlaying = false;//A variable to keep track of whether or not we are playing
let intervalId; // trying to save the last ID from the interval 
                // reason of declaring the ID ouside the function.

let score = JSON.parse(localStorage.getItem('lelo')) ||
   {
      wins : 0,
      lose : 0,
      Ties : 0
   }

function resetScore(){
   score.wins = 0;
   score.lose = 0;
   score.Ties = 0;
   localStorage.removeItem('score');
   updateScore();
 };

updateScore();

function autoplay(){
  if(!isAutoPlaying){
     intervalId = setInterval(()=>{ // trying to save the ID return by the interval,however Id is different each time at each interval
                                        //hence the variable to saving the ID from the interval is outside the fucntion
      const playerMove=pickComMove();
      playGame(playerMove);
    }, 1000);
    isAutoPlaying= true;    //stating the fucntion is true
  
    document.querySelector('.js-autoplay-button')
    .innerHTML = 'Stop Playing';
  
   }else{
      clearInterval(intervalId); //clearInterval() to stop the interval with the ID returned
      isAutoPlaying= false;
      document.querySelector('.js-autoplay-button')
      .innerHTML = 'Auto PLay';
  }
   //else stating the function is false
};  //save the Id and call the clearInterval to stop the Interval

document.querySelector('.rock-listener')
.addEventListener('click',()=>{
   playGame('Rock');
   });

document.querySelector('.paper-listener')
.addEventListener('click',()=>{
   playGame('Paper');
   });

document.querySelector('.scissor-listener')
.addEventListener('click',()=>{
   playGame('Scissor');
   });

document.querySelector('.reset-listener')
.addEventListener("click",()=>{
         resetConfirmation();
   });

document.querySelector('.autoPlay-Listener')
.addEventListener('click',()=>{
   autoplay();
});

document.body.addEventListener("keydown",(event)=>{
   if(event.key === 'r'){
      playGame('Rock');
   }else if(event.key === 'p'){
      playGame('Paper');
   }else if(event.key === 's'){
      playGame('Scissor');
   }else if(event.key === 'a'){
      autoplay();
   }else if(event.key==='Backspace'){
     resetScore();
     resetConfirmation();
   }
});

//code for confirmation message

function resetConfirmation(){
  document.querySelector('.js-reset-confirm')
  .innerHTML =`Are you Sure, You want to Reset the score?
  <button class= "yes-confirm-button">Yes</button>
  <button class= "no-confirm-button">No</button>` ;

  document.querySelector('.yes-confirm-button')
  .addEventListener('click',()=>{
    resetScore();
    hideResetConfirmation();
  });

  document.querySelector('.no-confirm-button')
  .addEventListener('click',()=>{
    hideResetConfirmation();
  });

};

function hideResetConfirmation(){
  document.querySelector('.js-reset-confirm')
  .innerHTML='';
};

function playGame(playerMove){
   let result = '';
   const comVal = pickComMove();
   if(playerMove === 'Rock'){
      if(comVal === 'Rock'){
         result = 'Tie';
         }else if(comVal === 'Paper'){
         result = 'You Lose';
         }else if (comVal === 'Scissor'){
         result = 'You Win';
         }
   }else if(playerMove === 'Paper'){
      if(comVal === 'Rock'){
         result = 'You Win';
         }else if(comVal === 'Paper'){
         result = 'Tie';
         }else if (comVal === 'Scissor'){
         result = 'You Lose';
         }
   }else if(playerMove === 'Scissor'){
      if(comVal === 'Rock'){
         result = 'You Lose';
         }else if(comVal === 'Paper'){
         result = 'You Win';
         }else if (comVal === 'Scissor'){
         result = 'Tie';
         }
      }

      if(result === 'You Win'){
      score.wins += 1;
      }else if(result === 'You Lose'){
      score.lose += 1;
      }else if(result === 'Tie'){
      score.Ties += 1;
      }

   localStorage.setItem('lelo',JSON.stringify(score));

   updateScore();

   document.querySelector('.js-result')
   .innerHTML = result;
    
   document.querySelector('.js-moves')
   .innerHTML = `You 
                 <img src="${playerMove}-emoji.png" class="move-icon">
                 <img src="${comVal}-emoji.png" class="move-icon"> Computer`;

   };

function updateScore(){
    document.querySelector('.js-score')
    .innerHTML=`Win: ${score.wins}.Lose: ${score.lose}. Ties: ${score.Ties}`;
 };

function pickComMove(){
   const randomNumber = Math.random();
   let comVal = '';   /*declaring variable inside a fucntion needs a return value
   which will be stored the "pickComMove()" which again need to be store in a 
   seperate variable during the call of the whole function */
      if(randomNumber >= 0 && randomNumber <1/3){
         comVal = 'Rock';
      }else if(randomNumber >=1/3 && randomNumber < 2/3){
         comVal = 'Paper';
      }else if(randomNumber >= 2/3 && randomNumber < 1){
         comVal = 'Scissor';
      }
      return comVal;
};

