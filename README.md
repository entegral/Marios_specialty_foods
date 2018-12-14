## **Mario's Specialty Foods**

#### By _**Robert Bruce**_

## Description

_This application is a rails-based product review site for a fictional italian, Mario. Mario loves baking specialty foods and would like his customers to be able to see and review his products online._

## Setup/Installation Requirements

### Easy Method

* Go to this [insert heroku link to deployment here](#)

### Hard Method

* _Log in to GitHub_
* _Clone GitHub URL in terminal_
* _Run Bundler to install necessary gems_
* _```cd``` into the root directory and type ```ruby app.rb``` to run sinatra_
* _Navigate to http://localhost:4567 in your browser to view the application_


## Learning Objectives

### Grading Criteria

- [x] Database has both products and reviews.
    - [x] Products have one to many relationship with reviews
    - [x] Products have name, cost and country of origin
    - [x] reviews have author, content_body and rating(between 1 and 5)
- [ ] Landing page includes basic info about company and offers easy site-wide navigation
    - [ ] Includes the three most recently added products and the product with the most reviews
- [ ] Product section includes list of all products
    - [ ] Each product is click-able
        - [ ] should be able to add, update and delete new products
        - [ ] users should be able to add a review
- [ ] Scopes should be used to display the product with most reviews, three most recently added products and all products made in usa
- [ ] Validations
    - [ ] all product-fields should be filled out, including rating
    - [ ] Rating can only be an integer between 1 and 5
    - [ ] a review's content_body must be between 50 and 250 characters
- [ ] Project should include seed data for 50 products and 250 reviews
  - [ ] Use Faker with a loop to seed Database
- [ ] Overall site styling should be presentable

## Bonus Objectives

- [x] Make the site kid-friendly! It's up to you to decide what that means.
- [x] Add a property to each Word that allows kids to link a picture.
- [x] Allow kids to sort Words alphabetically.
- [x] Allow kids to search for a particular Word in your application.
- [x] Search feature returns error page if search result is not in the list.
- [x] Include a page where kids can view all Words and their corresponding Definitions in one list.
- [x] Include a randomizer method where kids can click a button and randomly look at a Word

## Technologies Used
_GitHub, Ruby_

### License
Copyright (c) 2018 **_RB_** GNU General Public License 3.0
