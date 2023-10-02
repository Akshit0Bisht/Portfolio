const express = require('express');
const app = express();

app.use(express.static('D:\Portfolio'));

// ... other routes and server setup ...

app.listen(3000, () => {
  console.log('Server is running on port 3000');
});
