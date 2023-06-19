//Super simple dev:

  const object1 = {
    message : 'hello'
  }
console.log(object1);            //be careful while using 'const' with objects 
                                   //as objects are capable of changing its values.

// --------------------------------

const object2 = object1;
console.log(object2);

object1.message = 'Well Done Sumia';
console.log(object2);

//-----------------------------

const object3 ={
  message : 'hello'
}
console.log(object3 === object1); // this defines objects are refrences not 
                                  //  actual memory , where its values can be used.
                                  // only its refrence can be used

// -------------------------------

// Destructuring: Easier way to take properties of an objects

const object4 = {
	message : 'Well Done Sumia',
  price : 625,
  tags: 'brands'
	}

// const message = object4.message // storing the object4 message into a variable message
// console.log(message);					 // We can write the same code by destructuring.

// -------------------same 
const {message,price,tags} = object4;    //this is destructuring
console.log(message);			    //object4.message is stored into the variabel message.
console.log(price);
console.log(tags);


// ------------------------Shorthand property

const object5 ={
  message,  //taking the variable of object4...
              // it's like  ==> message : message
  // method : function fun1(){
  //   console.log('method')
  //   ----or
  method(){
    console.log('method');
  }
  }

console.log(object5); // the output is object4 variable "message"
console.log(object5.method);
object5.method();
// ---------------------ShortHAnd Method




// ----------------------------------BOOK-----------------



// Describe the Details about the House, House architecture and information and displays the information about the Owner

// House details
var House = {};
House.address = "674 Burdette Avenue, Glendale Heights, IL 60139";  // address is a property of the House 
House.constructionDate = new Date(10/04/2004);   // constructionDate is a property of the House 
House.area = 4500 ;   // area is a property of the House 

// Architecture(object) of the House(object)
House.architecture = {};//Creating an architecture 'object' of a house 'object' // Question , why I can't declare 'Var' keyword while creating the object's object?
//SURPRISE TO SEE I CAN UPLOAD WEBSITE DIRECTLY AS A STRING BUT IT WORKS INSIDE THE STRING
House.architecture.floor = "https://in.pinterest.com/pin/558094578818793389/";   // floor is a property of the House architecture
House.architecture.externalDoors = ["Living Room","Kitchen","Foyer","Outside"];   // externaldoor is a property of the House architecture
House.architecture.windows = ["Living Room(2)","Kitchen(1)","MasterBedroom(1)","Guest Room(1)","Bathroom(1)"];   // windows is a property of the House architecture
House.architecture.rooms = ["Living Room","Kitchen","Bedroom","Guestroom"];   // rooms is a property of the House architecture
House.architecture.style = "American FloorSquare";    // style is a property of the House architecture

// Details of th House Owner(object)
House.owner = {};  //Creating an owner 'object' of a house 'object' 
House.owner.name = "Irfan Khuddus";  // owner name is a property of the House 
House.owner.phone = "577613476";  // owner phone is a property of the House 

// Displaying the basic House Details
console.log("The House address is :" +House.address);
console.log("The built date is :" +House.constructionDate);
console.log("The area of the House is : " +House.area+ " square feet");

// Displaying owner Details
console.log("The name of the House owner is :" +House.owner.name);
console.log("The House owner's Phone number is : " +House.owner.phone);

// Displaying House Architecture
console.log("The Floor Plan is :" +House.architecture.floor);
console.log("Areas Having External doors : "+House.architecture.externalDoors);
console.log("The windows are in : "+House.architecture.windows);
console.log("The House consits of : "+House.architecture.rooms);
console.log("The Style of the House is : "+House.architecture.style );
console.log("Thank you Allah S.W.T and My Aka S.A.W");


