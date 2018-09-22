const express = require('express');
const app = express();

const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
    return res.send(`Hello from ${process.env.SERVER_NAME || 'me'}!`);
});

app.listen(PORT, () => {
    console.log(`Listening on port ${PORT}!`);
});