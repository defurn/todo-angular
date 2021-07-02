'use strict';

var express = require('express');

var app = module.exports = express();

app.use(express.static(__dirname));

const PORT = 8080
const HOST = '0.0.0.0'
app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);