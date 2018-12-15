## **Mario's Specialty Foods**

#### By _**Robert Bruce**_

## Description

_This application is a rails-based product review site for a fictional italian, Mario. Mario loves baking specialty foods and would like his customers to be able to see and review his products online._

## Setup/Installation Requirements

### Easy Method

* Go to this [link](https://floating-mountain-86456.herokuapp.com/)

### Hard Method

* _Log in to GitHub_
* _Clone GitHub URL in terminal_
* _Run Bundler to install necessary gems_
* _run ```rails s``` in your terminal_
* _Navigate to http://localhost:3000 in your browser to view the application_


## Learning Objectives

### Grading Criteria

- [x] Database has both products and reviews.
    - [x] Products have one to many relationship with reviews
    - [x] Products have name, cost and country of origin
    - [x] reviews have author, content_body and rating(between 1 and 5)
- [x] Landing page includes basic info about company and offers easy site-wide navigation
    - [x] Includes the three most recently added products and the product with the most reviews
- [x] Product section includes list of all products
    - [x] Each product is click-able
        - [x] should be able to add, update and delete new products
        - [x] users should be able to add a review
- [x] Scopes should be used to display the product with most reviews, three most recently added products and all products made in usa
- [x] Validations
    - [x] all product-fields should be filled out, including rating
    - [x] Rating can only be an integer between 1 and 5
    - [x] a review's content_body must be between 50 and 250 characters
- [x] Project should include seed data for 50 products and 250 reviews
  - [x] Use Faker with a loop to seed Database
- [x] Overall site styling should be presentable
- [x] Deployed to Heroku

## Technologies Used
_GitHub, Ruby_

### License
Copyright (c) 2018 **_RB_** GNU General Public License 3.0
