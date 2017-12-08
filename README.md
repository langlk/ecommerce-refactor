# E-Commerce Refactor

### _Epicodus Project in Ruby on Rails, December 8, 2017_

### By Kelsey Langlois

## Description

_This is a refactor of an e-commerce website, forked from [epicodus-lessons/went-to-bali-mwahaha](https://github.com/epicodus-lessons/went-to-bali-mwahaha)._

## Installation and Setup

To install on your own machine, follow the instructions below:

* Clone this repository.
* Run the following commands in the project root directory:
  ```
  bundle update
  rake db:setup
  rails db:seed
  rails s
  ```
* Open ```localhost:3000``` in your web browser
* **To give an account admin privileges:**
  * In the project root run ```rails c```
  * Then run:
    ```ruby
    User.find_by(email: "[account email address]").update(admin: true)
    ```
  * The account will now have admin access to the app.

## Specifications

### Refactoring

* Users can add items to their shopping cart from the index page with AJAX.
* Users can show and hide product details with AJAX.
* Users can remove items from their shopping cart with AJAX.
* Order items cannot have a quantity less than 1.
* Site displays a flash message when user signs up, signs in, and signs out.
* Ensure that users can't order a negative number of items.
* Admins can update and delete products in addition to creating them.
* Site displays flash messages when adding, updating and deleting products.
* An image can be added to a product using Paperclip.
* Product price can be entered as a decimal amount (ex: 19.99).
* Product validates that:
  * Product name, description, price exist.
  * Product price is greater than 0.
* Product index uses flexbox instead of Materialize grid to format rows.
* Remove "decimal" column from orders table and change total_price to a decimal instead of a string.

## Known Bugs

## Support and contact details

_Please contact [kels.langlois@gmail.com](mailto:kels.langlois@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby
* Rails
* Materialize
* AJAX

### License

Copyright (c) 2017 **Kelsey Langlois**

*This software is licensed under the MIT license.*
