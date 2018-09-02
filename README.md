# Bamazon-App

### Overview

This is the 10th assignment for the Coding Bootcamp delivered at University of Toronto Mississauga.

In this assignment we were required to create a command line interface node app called 'Bamazon' that works in connection to a SQL database. The database is an inventory of products and users/customers are prompted to enter the item ID and quantity for the product that they would like to order. If there is sufficient quantity in stock to meet the customer's demand, then the customer will be given a total price for their order. If not, they will be redirected to order another item or lower their order quantity.

### Description

### How It Works

1. `node .\bamazonCustomer.js`

   - This initializes the program and the available inventory is displayed

![Inventory Display](https://github.com/weirbran/Bamazon-App/assets/inventory.jpeg)

2. The customer is prompted to enter the ID of their desired product and how many they'd like to order.

![User Prompt - View 1](https://github.com/weirbran/Bamazon-App/assets/userPrompt1.jpeg)
![User Prompt - View 2](https://github.com/weirbran/Bamazon-App/assets/userPrompt2.jpeg)

3. If there is enough of the item in stock, then the customer is given their total order price and the available inventory is updated.

![Total Price - View 1](https://github.com/weirbran/Bamazon-App/assets/totalPrice1.jpeg)
![Total Price - View 2](https://github.com/weirbran/Bamazon-App/assets/totalPrice2.jpeg)
![Updated Inventory](https://github.com/weirbran/Bamazon-App/assets/inventoryUpdate.jpeg)

4. If the customer's request exceeds the available stock, then an error message is displayed and they are re-directed to order another item or lower quantity.

![Insufficient Quantity Error Message](https://github.com/weirbran/Bamazon-App/assets/insufficientQty.jpeg)

### Built With

- Node.js
- SQL
- MySQL and Inquirer NPMs

##

Try it! Click on the following link to take you to the repository:

https://github.com/weirbran/Bamazon-App
