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

        for(let i = 0 ; i < todolist.length; i++){
          const todoObject = todolist[i];
          //Due to Property and Variable has the same "name","dueDate"
          //We can select Destructuring
          //Destructing : variable 'name' takes the property 'name' from todoList
          //ex: const name = todoObject.name;
          //    const dueDate = todoObject.dueDate;
          // instead

          const {name,dueDate} = todoObject;
       
          const html = `
                <div>${name}</div>  
                <div>${dueDate}</div>
                <button onclick="
                  todolist.splice(${i},1);
                  renderTodoList();
                " class="css-delete-button">Delete</button>
                `;
                  todoListHTML += html;
        }

        document.querySelector('.js-todo-list')
        .innerHTML = todoListHTML;
    }
    
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
