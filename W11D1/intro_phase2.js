// FizzBuzz

// Define a function fizzBuzz(array) that takes an array and returns a
// new array of every number in the array that is divisible by either 3 or 5,
//  but not both.

function fizzBuzz(array) {

    function fizzer(ele){

        if ((ele % 3 === 0 || ele % 5 === 0) 
        && !(ele % 3 === 0 && ele % 5 === 0)){
            
            return ele;
        }
        else{
            return null;
        }

    }

    let newArray = [];

    newArray = array.map(fizzer);

    console.log(newArray);
} 

fizzBuzz([1,3,5,15,25,24,30])