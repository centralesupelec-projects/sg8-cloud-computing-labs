const express = require('express');
const mustacheExpress = require('mustache-express');
const os = require('os');
const { Client } = require('pg');

const app = express();
app.use(express.static(__dirname + '/public'));
app.set('view engine', 'html');
app.engine('html', mustacheExpress());          // register file extension 
app.set('views', __dirname);

app.get('/',function(req,res){
    res.status(200).send('Pet store');
});

app.get('/pet',function(req,res){
    const client = new Client({
        user: 'dockeruser',
        password: 'dockerpass',
        host: 'db',
        database: 'pets',
        port: 5432,
    })
    console.log("Connecting to DB");
    client.connect().then(() => console.log('connected')).catch(err => console.error('connection error', err.stack))

    const sql = 'SELECT * FROM images';
    client.query(sql, (err, result) =>{
        const data = result.rows;
        cat_one = data[0].url;
        cat_two = data[1].url;
        cat_three = data[2].url;
        cat_four = data[3].url;
        cat_five = data[4].url;
        cat_six = data[5].url;
        cat_seven = data[6].url;
        cat_eight = data[7].url;
        cat_nine = data[8].url;
        cat_ten = data[9].url;
        cat_eleven = data[10].url;
        cat_twelve = data[11].url;
        cat_thirteen = data[12].url;
        cat_fourteen = data[13].url;
        cat_fifteen = data[14].url;

        //data.forEach(row => {
        //    cat_table.push(row.url);
        //})
        
        res.render('index', {
                cat_one: cat_one,
                cat_two: cat_two,
                cat_three: cat_three,
                cat_four: cat_four,
                cat_five: cat_five,
                cat_six: cat_six,
                cat_seven: cat_seven,
                cat_eight: cat_eight,
                cat_nine: cat_nine,
                cat_ten: cat_ten,
                cat_eleven: cat_eleven,
                cat_twelve: cat_twelve,
                cat_thirteen: cat_thirteen,
                cat_fourteen: cat_fourteen,
                cat_fifteen: cat_fifteen,
                hostname: os.hostname()
            });
        client.end();
    })
});

function getRandomInt(max) {
    return Math.floor(Math.random() * Math.floor(max));
}

app.listen(3000, '0.0.0.0');

console.log("Listening at 0.0.0.0:3000");