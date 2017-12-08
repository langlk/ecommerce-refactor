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
