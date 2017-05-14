# takemyride

#### View and interact with the live app at [https://takemyride-whiterabbit.herokuapp.com/](https://takemyride-whiterabbit.herokuapp.com/)

## A quick project summary

#### An online platform where car sharing is made possible
- Enables car owners to list their cars for short term lease
- Alows potential customers who want to hire a car to directly connect with car owners 


#### To use the application
- Visit the live link at the top of this README
- If you would like admin access please use the uername: vigneshnatarajan@icloud.com password: password
#### Alternatively
- You can also clone the repositroy and setup locally
- run rails db:create
- run rails db:migrate
- run rails db:seed
- create a ENV file in the root folder and load your keys for Sendgrid, stripe and Amazon s3 bucket
- Please also incude --> EMAIL=donotreply@example.com in your ENV file
- run rails s
- navigate to localhost:3000 to test the project
- If you would like admin access, please enter the rails console and toggle the desired users admin status to true


### Assignment Criteria 📑
✔️ = Done 😊 | ❌ = Not Done 😞 | ❎ = Kinda Done 😑

#### DESIGN DOCUMENTATION
##### Demonstrate your ability to break doen the problem and design a solution
1. ✔️ One page summary of your application including problem definition, solution.
2. ✔️ A workflow diagram of the user journey/s.
3. ✔️ Wireframes for at least 5 screens.
4. ✔️ User stories for the whole application.
5. ✔️ Entity Relationship Diagram (ERD).
6. ✔️ Project plan and estimation.

#### TOOLS AND METHODOLOGIES
1. ✔️ Trello or similar project management tool to be used to track progress of build.
2. ❎ Show evidence of Slack conversations or use of other communication tools(not sure how I can prove this but did a whole lot of verbal communication).
3. ✔️ Code review. Demonstrate that you have had your code reviewed by other students and that you have provided a code review for others(Jaime, Teck and George helped me out a quite a bit, and others as well. I have also given my input to a few students and gone through their code).
4. ✔️ Github. Demonstrate use of frequent commits, pull requests, documentation(Plenty of commit and branches).
5. ✔️ Use Agile development methodologies(Trello is great!!!).
6. ❌ Provide evidence you have used code quality tools (eg. Traceroute, Bullet, Brakeman, Rails Best Practices tool, RuboCop, RubyCritic, CodeClimate)(Sorry, ran out of time to implement any of this).


#### RAILS APPLICATION CODE
1. ✔️ Create your application using Ruby on Rails.
2. ✔️ Demonstrate knowledge of Rails conventions.
3. ✔️ Use postgresql database in development.
4. ✔️ Use an API (eg. Omniauth, Geocoding, Maps, other..).
5. ✔️ Use appropriate gems
6. ✔️ Use environmental variables to protect API keys etc.
7. ✔️ Implement a payment system for your product.
8. ✔️ Your app must send transactional emails (eg. using Mailgun)
9. ️❎  Your app should have an internal user messaging system. (not, sure if vehicle owner and customer able to share emails counts??)
10. ✔️ Your app will have some type of searching, sorting and or filtering capability.
11. ✔️ Your app will have some type of file uploading capability (eg. images).
12. ✔️ Your app will have authentication (eg. Devise, must have full functionality in place).
13. Your app will have authorisation (users have restrictions on what they can see and edit).
14. ❎ Your app will have an admin dashboard for the admin user to administrate the site. (Can have admin access after toggling boolean from console)
15. ✔️ Document your application with a README that explains how to setup, configure and use your application.


#### DEPLOYED APPLICATION

1. ✔️ Your application is to be deployed to Heroku / AWS.


## Database schema - ERD 📊
![ERD](app/assets/images/ERD.png)


## Mockups / Wireframes 🖼
[Hosted on Figma](https://www.figma.com/file/VhdyvsgAHD8SV6dDAEMEr9xE/takemyride)


## Trello 😏
[Trello - takemyride - Ruby on Rails - CoderFactoryAcademy](https://trello.com/b/0h5xuf95/takemyride)

![Trello1](app/assets/images/trello1.png)
![Trello2](app/assets/images/trello2.png)

## Initial workflow ideas 😏
![Handdrawing1](app/assets/images/IMG_2410.JPG)
![Handdrawing2](app/assets/images/IMG_2411.JPG)

















## payments

Problem: Don't yet have JavaScript skills to create seamless payment through one action. 
Solution: have a paid bool field that produces a pay button on the booking :show page which will only show if paid is false.
Booking is not final until paid is true

We do not do this because we wanted to use jquery, jQuery UI and a special stripe amount which needed to be variable - page info:
https://stripe.com/docs/recipes/variable-amount-checkout

1. We added a button
2. We did some JavaScript & jQuery to find out the days
3. We updated a variable amount * price
4. We put that amount in the stripe JavaScript action