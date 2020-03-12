# All the Chats

## Basic description
The application allows two users (who are hard coded through the seed data) to chat with each other in separate windows. The purpose of the app was to explore ActionCable in Rails. Unfortunately for us all, it is not currently styled.

## What the app can do
  * Following setup locally in one browser window choose one of the two users that are provided.
  * In a separate browser window, open up the app again and select the second user.
  * Messages sent in one window will be displayed to each user within the discussion thread.
  * Each message has a label with with user sent the message.
  * Messages are saved on the back end, so if you leave the session and return to the app later, all messages that have been sent will be displayed again.

## Things I Would Tackle Next - No Particular Order
  * Reintroduce the concept of discussions. I originally designed the schema with this thought in mind, but due to time limitations and the eventual simplicity of the app, I did not pursue it.
  * Add Authentication
  * Allow new users to sign up
  * Allow users to select other users they would like to chat with
  * More testing
  * Add some styling!
  * Display all of a user's discussions on their own page

## Setup Locally
  * The app uses ruby '2.7.0'
  * postgres is used as the database
  * Clone the app from this repo
  * run `bundle install`
  * run rails `db:create db:migrate db:seed` to setup the database and the sample user data
  * `rails s` will start the server
  *  you can find he app at `localhost:3000` in your browser
