const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

// ROUTE 1 (/ --> get everything on index.hbs)
router.get('/', (req, res) => { // req stands for request, you are making a request on the site; res stands for response, when the server finds your stuff, it responds ot you

    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, Title, Category, Image FROM tbl_card"; // have data that lives in a database, now give it to me on a page by going to retreive the data!!!

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('home', { person: result });
    })
})

// ROUTE 2 is showing info for a specific favourite thing (/:id)
// for portfolio use '/portfolio/:id' --> this is making the route more specific
// for infographic use '/infographic/:id'

// this resolves to localhost:3000/anything (whatever you put after the slash in the location bar) --> add /anything to the browser and you should see that in the terminal in vsc
router.get('/users/:id', (req, res) => {
    console.log('hit a dynamic route!');
    console.log(req.params.id);

    let query = `SELECT * FROM tbl_info WHERE favID="${req.params.id}"`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        // res.render('home', { people: result });

        //turn our social property into an array -- it's just text in the database, which isn't really anything we can work with
        // result[0].social = result[0].social.split(",").map(function(item) {
        //     item = item.trim(); // remove extra spaces from each word

        //     return item;
        // });

        // console.log('after split: ', result[0]);

        // send the database query back to the browser
        res.json(result);
    })
})

module.exports = router;