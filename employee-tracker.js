// dependencies
const mysql = require("mysql");
const inquirer = require("inquirer");
const consoleTable = require("console.table");
const promiseMySql= require("promise-mysql");

// connection properties

const connectionProp = {
    host: "localhost",
    port: 3001,
    user: "root",
    password: "",
    database: employees_db
};