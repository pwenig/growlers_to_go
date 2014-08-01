https://travis-ci.org/pwenig/growlers_to_go.svg?branch=master

#Growlers to Go

## About this app
Growlers to Go is an application that lets users order Growlers of beer from featured breweries and have
them delivered to their homes. The application features a two basic database tables, a monthly-membership (recurring billing) using Stripe,
Google Geocoding and Mapping API in JavaScript, SendGrid integration welcome email. More to come!

The application is built in Rails and uses a PostgreSQL database. Testing is done using Rspec.

## Important Links

* [Heroku Staging](http://growlers-to-go.herokuapp.com/)
* Use Stripe test credit card 4242 4242 4242 4242. Any 3-digit security code.
* Login as admin using the following email: mick@rollingstones.com. password: music


## Setup
Please follow the steps below to get this site set up for local development.
1. Fork. Clone
2. Bundle
3. Create database by running rake db:create db:migrate db:seed
4. When running the first time, login in as Admin to create products. Note login info in seeds.
5. The app uses carrierwave. You may need to install 'imagemagick'(i.e. if you use homebrew: brew install imagemagick).
6. Run tests using rspec. Should be green!

## Future Stories
1. Improved Stripe payment integration.
2. More admin features - current customers, canceled customers, etc.
3. API for additional info about featured beers.
4. Mapping delivery routes

