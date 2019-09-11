
function titleize (array, cb)
{   
    let bigger = []
    
    bigger = array.map( (el) => {
     ["Mx.", el, "Jingleheimer", "Schmidt"]
    });
    
    cb(bigger);
};

function print (arr) {
    console.log(arr);
}

// const print = function (arr){ 
//     arr.forEach( function (el){
//      console.log(el)}
//      );
// };

titleize(["Mary", "Brian", "Leo"], print());