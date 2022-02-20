# README

A small Rails application that contains a decent TDD exercise.

* Ruby 3.0.3
* Rails 7.0.1

## Getting Started

* Clone the repository

* `bundle install`

* `rails db:create db:migrate db:seed`

* `rails s`

* You should be able to log in with the credentials output from `db:seed` and poke around.

## Application Context:

The idea behind this application is that it can provide information about a given law firm (though the details of how multiple firms could be managed has been simplified to keep the footprint small and is unrelated to the exercise). 

The user that the seeding process has generated belongs to a law firm, and logging in as that user takes you to that firm's dashboard. From there you can view the list of attorneys at the firm, and a very bare About Us page. 
The Attorneys List is a combination of the index of existing attorneys, and a form at the bottom to create new ones. The problem is that the Attorneys List seems to be heckin' broke.

## Exercise

At this point you should close the browser tab and begin writing a failing spec that asserts that you can add a new attorney and that their details show up in the attorneys list, and begin the fix/test feedback loop until you are able to get your spec to pass.

In true TDD fashion it is recommended that at each error step in the test loop you only make the changes necessary to fix that particular error. Once the spec passes, you are free to do any amount of refactoring you desire.

[Red, Green, Refactor](https://www.codecademy.com/article/tdd-red-green-refactor)

