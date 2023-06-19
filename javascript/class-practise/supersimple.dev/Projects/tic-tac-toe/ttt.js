const statusDisplay = document.querySelector('.game--status');

let gameActive = true;

let currentPlayer = "x";

let gameState = ["","","","","","","",""];

const winningMessage = () =>`Player ${currentPlayer} has Won!!` ;
const drawMessage = () => `Game Ended in draw` ;
const currentPlayerTurn = () => `It's ${currentPlayer}'s Turn` ;

const winningConditions = [
                              [0,1,2],
                              [3,4,5],
                              [6,7,8],
                              [0,3,6],
                              [1,4,7],
                              [2,5,8],
                              [0,4,8],
                              [2,4,6]
                           ];


function handleCellClicked(clickedCellEvent){
  const clickedCell = clickedCellEvent.target;
  const clickedCellIndex = parseInt(clickedCell.getAttribute('data-cell-Index'));
// getAttribute() method is used to get the value of an attribute of the particular element
//The cellIndex property returns the position of a cell in the cells collection of a table row.
    handleCellPlayed(clickedCell,clickedCellIndex);
    handleResultValidation();
};

function handleCellPlayed(clickedCell,clickedCellIndex){
  gameState[clickedCellIndex]=currentPlayer;
  clickedCell.innerHTML=currentPlayer;
};

// array.forEach(callbackFunction);
// array.forEach(callbackFunction, thisValue);
document.querySelectorAll('.cell')
  .forEach(cell => cell.addEventListener('click',handleCellClicked));
document.querySelector('.game--restart')
  .addEventListener('click',handleRestartGame);


function handleResultValidation(){
  let roundWon = false; //false =0
  for (i=0;i<=7;i++){
    const winCondition = winningConditions[i];
    let a = gameState[winCondition[0]];
    let b = gameState[winCondition[1]];
    let c = gameState[winCondition[2]];

    if(a===''|| b === ''||c === ''){
      continue;
    }
    if(a=== b && b ===c){
      roundWon = true;
      break;
    }
  }

  if(roundWon){
    statusDisplay.innerHTML = winningMessage();
    gameActive = false;
    return;
  }
  handlePlayerChanged();
};


function handlePlayerChanged(){

    currentPlayer = currentPlayer === "x" ? "o" : "x";
    statusDisplay.innerHTML = currentPlayerTurn();

};


function handleRestartGame(){
  gameActive = true;
  currentPlayer = "x";
  gameState = ["","","","","","","",""];
  statusDisplay.innerHTML = currentPlayerTurn();
  document.querySelectorAll('.cell')
    .forEach(cell=>cell.innerHTML= "");

}