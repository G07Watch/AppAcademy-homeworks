const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout 
});

// window.setTimeout( ()=> { alert('HAMMERTIME')} , 5000)

// function hammerTime(time){

//     window.setTimeout( ()=> { alert(`${time} is hammertime!`)}, time);

// }

// hammerTime(5000);




function teaAndBiscuits() {
    let first, second;

    reader.question('Would you like some tea?', (res) => {
        first = res;
        console.log(`You replied ${res}.`);
        
        
        reader.question('Would you like some biscuits?', (res) => {
            second = res;
            console.log(`You replied ${res}.`);
            
            const firstRes = (first === 'yes') ? 'do' : 'don\'t';
            const secondRes = (second === 'yes') ? 'do' : 'don\'t';
            console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);

            reader.close();
        });
        
    });
   
}

teaAndBiscuits();