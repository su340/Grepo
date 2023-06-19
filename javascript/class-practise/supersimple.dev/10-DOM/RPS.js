let score = JSON.parse(localStorage.getItem('lelo')) ||
   {
      wins : 0,
      lose : 0,
      Ties : 0
   }

updateScore();

function updateScore(){
   document.querySelector('.js-score')
   .innerHTML=`Win: ${score.wins}.Lose: ${score.lose}. Ties: ${score.Ties}`;
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

   }

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

