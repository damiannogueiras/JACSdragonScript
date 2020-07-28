'use strict';
const { Client, Message } = require('node-osc');
const { exit } = require('yargs');

// settings
var ADDRESS = '192.168.4.1';
var PORT    = 8888;


var fs 		= require('fs');
var argv 	= require('argv');
var path  = require('path');
var osc 	= require('node-osc');

var content = 'argumentos:';
var params = process.argv.slice(2);


// logging
params.forEach(function(val, index, array) {
	content += ' ' + index + ':' + val;
})

/*
// parse args
var command = params[3];
var frame = parseInt(params[4]);
var sceneName = `${params[0]}_${params[1]}_${params[2]}`
*/

const client = new Client(ADDRESS, PORT);

client.send('/dragonframe', content, () => {
  client.close();
});