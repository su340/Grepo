const todolist = [{
  name:'make dinner' ,
  dueDate:'06/30/2023'
},
{
  name:'wash dishes' ,
  dueDate:'08/15/2023'
}];
//Accumulator Pattern:
// top of the loop create a variable to store the result
//update and store the result
// ------------------------------
// every time we add a todo we need it to get gey updated and print on the pageXOffsetto 
// we need function for that
renderTodoList();

function renderTodoList(){ // render: to display something on the page
let todoListHTML = '';

todolist.forEach( (todoObject,index) => {
const {name,dueDate} = todoObject;
const html = `
<div>${name}</div>  
<div>${dueDate}</div>
<button class=
  "css-delete-button delete-listener">
  Delete</button>
`; 

todoListHTML += html;
});

document.querySelector('.js-todo-list')
.innerHTML = todoListHTML;

document.querySelectorAll('.delete-listener')
  .forEach((deletebutton,index)=>{
    deletebutton.addEventListener('click',()=>{
      console.log(index); //helpful to understand closure
      todolist.splice(index,1);
      renderTodoList();
    });
  });
  //console.log(index); //outside the fucntion its gets end
};

document.querySelector('.add-listener')
.addEventListener('click',()=>{
  addTodo();
});

function addTodo(){
const inputElement = document.querySelector('.js-input-Array');
const name = inputElement.value;

const dateInputElement= document.querySelector('.js-todo-date');
const dueDate = dateInputElement.value;

todolist.push({
    // name:name,
    // dueDate:dueDate or "ShortHand" Property Syntax                    });
    name,
    dueDate
  });
  
inputElement.value= '';  // clear ups the text 

renderTodoList();
};

function hitEnter(event){
if(event.key === 'Enter'){
addTodo();
}
};
