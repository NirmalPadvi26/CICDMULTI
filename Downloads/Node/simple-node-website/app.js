const express = require('express');
const app = express();
const port = 3000;

// Define a basic route
app.get('/', (req, res) => {
  res.send('Hello, World! This is my simple Node.js website.');
});

// Start the server
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});