'use strict';

const express = require('express');
const cors = require('cors')

// Constants
const PORT = 80;
const HOST = '0.0.0.0';

// App
const app = express();
app.use(cors());
app.get('/', (req, res) => {
    setTimeout(() => res.json({
        version: "v2",
    }), Math.random() * 50)
});

app.listen(PORT, HOST);
