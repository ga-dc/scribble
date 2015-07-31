# Scribble

![](https://dl.dropboxusercontent.com/s/8frf8rblw6pnpds/hipsterlogogenerator_1438007087793.png?dl=0)

is a week-long Ruby on Rails writing application where Users can read, write, and interact
with the best content all around the world.

We will start off with two models: `Posts` and `Comments`, and eventually
add in `Users` with secure password authentication.

## Models + Migrations

- Create ERD for Posts and Comments
- Create models for Posts and Comments
- Create migrations for Posts and Comments

## Views + Controllers

- Add views and controllers. Full CRUD/REST.
- Remember to add authenticity token to forms
- use strong params

## Helpers

- Convert links, forms, etc. to helpers.

## Routes

- Implement nested routes.

## Sessions

- Add user authentication. Associate Posts with User model.

## Deploy

- Deploy to Heroku.


$ rails g migration create_songs title:string album:string preview_url:string artist:references

$ rails g migration create_posts date_created:datetime date_modified:datetime title:string body:string

$ rails g migration create_comments date_created:datetime date_modified:datetime body:string post:references

Song has title, album, string, preview_url, artist_references / connection

Posts
  id
  date modified
  date created
  title
  body
Comments
  id
  date modified
  date created
  body
