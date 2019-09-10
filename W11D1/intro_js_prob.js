// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

//     mysteryScoping1(); // scope is function
//     console.log('------------------');

// function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//         const x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// mysteryScoping2();// scope is function but const contents are mutable
// console.log('------------------');

// function mysteryScoping3() {
//     // const x = 'out of block';
//     // if (true) {
//     //     var x = 'in block';
//     //     console.log(x);
//     // }
//     // console.log(x);
// }

// mysteryScoping3();//scope is global in function or block
// console.log('skipping 3--------');


// function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// mysteryScoping4();// scope is block
// console.log('------------------');


// function mysteryScoping5() {
//     // let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
// }

// mysteryScoping5();
// console.log('------------------');


function madLib(verb, adj, noun){
    
    console.log(`We will ${verb} the ${adj} ${noun}`);

}

// madLib("dance", "pretty", "trampoline");


function isSubstring(searchString, subString){

    if (searchString.includes(subString)){
        console.log('true');
    }
    else{
        console.log('false');
    }

}

isSubstring("time to program", "time");
isSubstring("Jump for joy", "joys");