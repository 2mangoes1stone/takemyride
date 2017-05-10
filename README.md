# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



# payments

Problem: Don't yet have JavaScript skills to create seamless payment through one action. 
Solution: have a paid bool field that produces a pay button on the booking :show page which will only show if paid is false.
Booking is not final until paid is true

We do not do this because we wanted to use jquery, jQuery UI and a special stripe amount which needed to be variable - page info:
https://stripe.com/docs/recipes/variable-amount-checkout

1. We added a button
2. We did some JavaScript & jQuery to find out the days
3. We updated a variable amount * price
4. We put that amount in the stripe JavaScript action