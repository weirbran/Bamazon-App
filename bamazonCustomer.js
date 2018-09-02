var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "password",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
});

var userPrompt = function() {
  inquirer
    .prompt([
      {
        name: "productID",
        type: "input",
        message:
          "What is the item ID of the product that you'd like to purchase?",
        validate: function(value) {
          if (isNaN(value) === false) {
            return true;
          }
          return false;
        }
      },

      {
        name: "productQuantity",
        type: "input",
        message: "How many units would you like to purchase?",
        validate: function(value) {
          if (isNaN(value) === false) {
            return true;
          }
          return false;
        }
      }
    ])
    .then(function(answer) {
      customerOrder(answer);
    });
};

function displayInventory() {
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    console.log(res);
  });
}

function customerOrder(answer) {
  var query = "SELECT * FROM products WHERE item_id=?";
  connection.query(query, [answer.productID], function(err, res) {
    if (err) {
      console.log(err);
    } else if (res[0].stock_quantity < answer.productQuantity) {
      console.log(
        "Sorry, we don't have that many in stock. Please select another item or a lower quantity."
      );
      userPrompt();
    } else {
      updateInventory(res, answer);
      customerTotal(res, answer);
    }
  });
}

function updateInventory(res, answer) {
  connection.query(
    "UPDATE products SET ? WHERE ?",
    [
      {
        stock_quantity: res[0].stock_quantity - answer.productQuantity
      },
      {
        item_id: answer.productID
      }
    ],
    function(err) {
      if (err) throw err;
    }
  );
}

function customerTotal(res, answer) {
  var query = "SELECT * FROM products WHERE item_id=?";
  connection.query(query, [answer.productID], function(err, res) {
    if (err) {
      console.log(err);
    } else {
      var price = res[0].price * answer.productQuantity;
      console.log("Your total price is " + price.toFixed(2));
    }
  });
}

displayInventory();
userPrompt();
