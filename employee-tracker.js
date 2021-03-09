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

//this creates connection
const connection = mysql.createConnection(connectionProp);

connection.connect((err => {
    if (err) throw err;
    console.log("\n EMPLOYEE TRACKER \n");
    mainMenu();
}))

//main menu function, using prompt to choose options
function mainMenu(){
    inquirer
    .prompt({
    name: "action",
    type: "list",
    message: "MAIN MENU",
    choices: [
        "View all employees",
        "View all by role",
        "View all by department",
        "View all by manager",
        "Add employee",
        "Add role",
        "Add department",
        "Update employee role",
        "Update employee manager",
        "Delete employee",
        "Delete role",
        "Delete department",
        "View department budgets"
    ]
})
//
.then((answer) => {
    switch (answer.action) {
        case "View all employees":
                viewAllEmp();
                break;

            case "View all by department":
                byDept();
                break;

            case "View all employees by role":
                byRole();
                break;

            case "Add employee":
                addEmp();
                break;

            case "Add department":
                addDept();
                break;
            case "Add role":
                addRole();
                break;
            case "Update employee role":
                updateEmpRole();
                break;
            case "Update employee manager":
                updateEmpMngr();
                break;
            case "View all employees by manager":
                viewAllEmpByMngr();
                break;
            case "Delete employee":
                deleteEmp();
                break;
            case "View department budgets":
                viewDeptBudget();
                break;
            case "Delete role":
                deleteRole();
                break;
            case "Delete department":
                deleteDept();
                break;
    }
});

}
// function to view all employees
function viewAllEmp(){

    // Query to view all employees
    let query = "SELECT e.id, e.first_name, e.last_name, role.title, department.name AS department, role.salary, concat(m.first_name, ' ' ,  m.last_name) AS manager FROM employee e LEFT JOIN employee m ON e.manager_id = m.id INNER JOIN role ON e.role_id = role.id INNER JOIN department ON role.department_id = department.id ORDER BY ID ASC";

    // Query from connection
    connection.query(query, function(err, res) {
        if(err) return err;
        console.log("\n");

        // Display query results using console.table
        console.table(res);

        //Back to main menu
        mainMenu();
    });
}