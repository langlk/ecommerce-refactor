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

### To-Do:

* Users should be able to add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.

* Users should be able to click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add.

* Users should be able to remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated

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
