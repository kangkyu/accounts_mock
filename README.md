# README

followed "[React.js - A guide for Rails developers](https://www.airpair.com/reactjs/posts/reactjs-a-guide-for-rails-developers)" tutorial  
the author Fernando Villalobos' [Demo](https://github.com/fervisa/accounts-react-rails)

## A mock expense tracking app

For this guide, we are building a small application from scratch to **keep track of our expenses**; each record will consist of a date, a title and an amount. A record will be treated as Credit if its amount is greater than zero, otherwise it will be treated as Debit.

+ When the user creates a new record through the horizontal form, it will be appended to the records table
+ The user will be able to inline-edit any existing record
+ Clicking on any *Delete* button will remove the associated record from the table
+ Adding, editing or removing an existing record will update the amount of boxes at the top of the page

## date, title, and amount

+ We are going to build a Record resource, which will include a date, a title, and an amount.
+ Next, we need to create a new file `index.html.erb` under `apps/views/records/`, this file will act as a bridge between our Rails app and our React Components.

> State drives one-way reactive data flow
> React component we want to render "Records"
> Properties to communicate with other components
