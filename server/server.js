const express = require('express');
const mysql = require('mysql2');
const port = 3001; // Change this if needed
const cors = require("cors");

const app = express();
// Enable CORS
app.use(cors());

// Replace with your MySQL connection details
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'pharmaciedegarde'
});

// Connect to database
db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log('MySQL Connected.');
});


// Get pharmacies locations from the database
app.get('/api/locations', (req, res) => {
  const sql = 'SELECT id, image, name, address, lat, lng, ville FROM locations';
  db.query(sql, (err, results) => {
    if (err) {
      console.error(err);
      res.status(500).send("Server error");
    } else {
      res.json(results);
    }
  });
});

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
