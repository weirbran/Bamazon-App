# Bamazon-App

### Overview

This is the 10th assignment for the Coding Bootcamp delivered at University of Toronto Mississauga.

In this assignment we were required to create a command line interface node app called 'Bamazon' that works in connection to a SQL database. The database is an inventory of products and users/customers are prompted to enter the item ID and quantity for the product that they would like to order. If there is sufficient quantity in stock to meet the customer's demand, then the customer will be given a total price for their order and the inventory will be updated. If not, they will be redirected to order another item or lower their order quantity.

### Description

### How It Works

1. `node .\bamazonCustomer.js`

   - The user enters the above to initialize the program and the available inventory is displayed.

![Inventory Display](https://user-images.githubusercontent.com/37091892/44960404-4a20ea80-aecd-11e8-8ea1-d856fdb7b327.JPG)

2. The customer is prompted to enter the ID of their desired product and how many they would like to order.

![User Prompt - View 1](https://user-images.githubusercontent.com/37091892/44960413-72104e00-aecd-11e8-8fe2-6d3335503040.JPG)
![User Prompt - View 2](https://user-images.githubusercontent.com/37091892/44960414-72104e00-aecd-11e8-8061-efe12b27e0c8.JPG)

3. If there is enough of the item in stock, then the customer is given their total order price and the available inventory is updated.

![Total Price - View 1](https://user-images.githubusercontent.com/37091892/44960426-9bc97500-aecd-11e8-942f-27c5ece289ac.JPG)
![Total Price - View 2](https://user-images.githubusercontent.com/37091892/44960427-9bc97500-aecd-11e8-863b-1516b4bb7619.JPG)
![Updated Inventory](https://user-images.githubusercontent.com/37091892/44960433-b3a0f900-aecd-11e8-9363-f5a1f1af6ec8.JPG)

4. If the customer's request exceeds the available stock, then an error message is displayed and they are redirected to order another item or a lower quantity.

![Insufficient Quantity Error Message](https://user-images.githubusercontent.com/37091892/44960434-b4398f80-aecd-11e8-93f4-8b9b8f93b7af.JPG)

### Built With

- Node.js
- SQL
- MySQL and Inquirer NPMs

##

Try it! Click on the following link to take you to the repository:

https://github.com/weirbran/Bamazon-App
