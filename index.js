//start connection
const mysql = require('mysql');
const inquirer =require('inquirer');
// add console tabl !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
const cTable = require("console.table");
const connection = mysql.createConnection({
  host: 'localhost',

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: 'root',

  // Be sure to update with your own MySQL password!
  password: '83951281cS',
  database: 'employeetrack_db',
});


connection.connect(function(err) {
        if (err) throw errconsole.log('connected as id' + connection.threadId)
        start();
    });
    const start = () => {
        inquirer
        .prompt([
            {
                type: 'list',
                message: 'Where would you like to go?',
                name: 'choice',
                choices: [
                    'Employees List',
                    'Employees Roles',
                    'Employee Departments',
                    'Employee Updates',
                    'Add Employee',
                    'Add Role for Employee',
                    'Add Employee Department'
                ]
            }
           
        ]) (function(val) {
            switch (val.choice) {
                case "Employee List":
                  viewAllEmployees();
                break;
        
              case "Employee Roles":
                  viewAllRoles();
                break;
              case "Employee Departments":
                  viewAllDepartments();
                break;
              
              case "Employee Updates":
                    addEmployee();
                  break;
        
              case "Add Employee":
                    updateEmployee();
                  break;
          
                case "Add Role for Employee":
                    addRole();
                  break;
          
                case "Add Employee Department":
                    addDepartment();
                  break;
        
                }
        })
    }
    