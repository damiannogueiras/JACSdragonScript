"use strict";
const { Client, Message } = require("node-osc");

// settings
var ADDRESS = "192.168.4.1";
var PORT = 8888;

var fs = require("fs");
var argv = require("argv");
var path = require("path");
var osc = require("node-osc");

var content = "argumentos:";
var params = process.argv.slice(2);

/* 
  Production    : params[0] 
  Scene         : params[1] 
  Take          : params[2] 
  Action        : params[3] (POSITION, SHOOT, DELETE, CC, FC, TEST, EDIT, CONFORM)
  Frame         : params[4] 
  Exposure      : params[5]
  Exposure Name : params[6] 
  Image Path    : params[7]
*/

const client = new Client();

// desicion ACTION
switch (params[3]) {
  // send frame before shoot via osc
  case "SHOOT":
    client.send("/dragonframe/shoot", params[4], () => {
      client.close();
    });
    break;
}
