var mysql = require('mysql');
var connection = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: 'Cognizant1822',
    database: 'ecom'

});


module.exports = connection;