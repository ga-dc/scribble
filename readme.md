# Scribble

![](https://dl.dropboxusercontent.com/s/8frf8rblw6pnpds/hipsterlogogenerator_1438007087793.png?dl=0)

Scribble is a Ruby on Rails application where users can read, write and interact
with the best content all around the world. It is designed to be built, refined and deployed over the course of four nights.

We will start off with two models: `Post` and `Comment`.

## Submitting

Fork this repo, and submit homework as a pull request on this repo...

```
$ git clone git@github.com:ga-wdi-exercises/scribble.git
$ cd scribble
$ rails new . -d postgresql
```
> When asked if you want to overwrite the readme, enter "n" (for no).

The `.` creates a new Rails app inside the *CURRENT* folder. Otherwise, it creates a new folder. For instance, if you did `rails new scribble` it would create a `scribble` folder and put the Rails app inside there.

> This is how a lot of people end up with a `scribble` folder inside another `scribble` folder.

## Models + Migrations

- Create ERD for Post and Comment
- Create models for Post and Comment
- Create migrations for Post and Comment

```
$ rails g migration create_posts
$ rails g migration create_comments
```
```
class CreatePosts < ActiveRecord::Migrations[5.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :body, null: false
      t.string :img_url, null: false
      t.timestamps
    end
  end
end
```
- Now create the database:
```
$ rails db:drop db:create db:migrate
```
- If changes are made to the migrations, database has to be dropped, created, and migrated again.
```
$ rails db:migrate:reset
(works just above code but is shorter)
```
- Do the same for Comments:
```
class CreateComments < ActiveRecord::Migrations[5.0]
  def change
    create_table :comments do |t|
      t.string :author, null: false
      t.string :body, null: false
      t.references :post, index: true, foreign_key: true
      t.timestamps
    end
  end
end
```
- Create models post.rb and comment.rb. ie:
```
app/models/post.rb

class Post < ApplicationRecord
  
end
```
- Now we need to create seed data!! Go to app/db/seeds.rb
```
app/db/seeds.rb

Post.destroy_all
Comment.destroy_all

### Posts seed data

post1 = Post.create({
  title: "Summer Movie"
  author: "Lemony Snicket"
  body: "Text"
  img_url: "https://www.organicfacts.net/wp-content/uploads/2013/05/Banana3.jpg"
})

post2 = Post.create({
  title: "Summer Book"
  author: "Lemony Snicket"
  body: "Text"
  img_url: "https://www.organicfacts.net/wp-content/uploads/2013/05/Banana3.jpg"
})

post3 = Post.create({
  title: "Summer Movie"
  author: "Lemony Snicket"
  body: "Text"
  img_url: "https://www.organicfacts.net/wp-content/uploads/2013/05/Banana3.jpg"
})

### Comments seed data in the form of an array
Comment.create([
  {body: "Is that a banana?", author: "Alec Baldwin", post: post1}
  {body: "Is that another banana?", author: "Alec Baldwin", post: post2}
  {body: "Is that another banana, again?", author: "Alec Baldwin", post: post3}
])
```
- Now add seed data!!
```
$ rails db:seed
```
- **Test in the console**
```
$ rails c
> Post.all
> Comment.all
```
## Routes
- Go to config/routes.rb and create routes.
```
config/routes.rb

root to 'posts#index'

Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
end
```
- View routes created:
```
$ rails routes
```
** YOU'RE READY TO START YOUR SERVER **
```
$ rails s
```
In the browser: localhost:3000/

Create Controller
----

## Index

- Create an index where a user can see all posts
- Each post should link to its respective show page
```
app/controllers/posts_controller.rb (plural naming convention)

class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
end
```
- After creating, you should get a template error. Make your templates in a folder (in this case called 'posts') the app/views/ folder and creating a new file 'index.html.erb'
```
app/views/posts/index.html.rb

### Create Template like so
<h1>All posts</h1>
<% @posts.each do |post| %>
  <div class="post>
    <h2><%= link_to post.title, posts_path(post) %></h2>
    <p>by <%= post.author %>
  </div>
<% end %>
```

## Show

- Create a show where a user can see each individual post.
- The show page should also show all of the post's comments.
- Back to the post controller, add a show method.
```
app/controllers/posts_controller.rb

class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comments = post.comments
  end
end
```
- Create a show template to resolve template error:
```
app/views/posts/show.html.rb

<h1><%= @post.title %></h1>
<p>by <%= @post.author %></p>
<img src="<%= @post.img_url %>" alt="<%= @post.title %>">
<p><%= @post.body %></p>

<% @comments.each do |comment| %>
  <h4><%= comment.author %> - <%= comment.created_at %></h4>
  <p><%= comment.body %></p>
<% end %>
```

CRUD actions
----
** Repeat above process: add the method to the controller, create a template, link pages, etc. **
## Create

- Allow the user to create new posts and comments
```
app/controllers/posts_controller.rb

### Strong Params
class PostsController < ApplicationController
  def create
    @post = Post.create(post_params)
    redirect_to post_path(@post)
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :author, :body, :img_url)
  end
end
```

## Update

- Allow the user to edit existing posts and comments

## Delete

- Allow the user to delete existing posts and comments.

## Bonus

Create two additional models: Category and Tag.
* Tag represents the join table between Post and Category.

Update the `Post` show page so that it includes...
* A linkable list of that Post's Categories.
* When clicked, each Tag should link to its Category show page.

Create a form that allows you to create a Tag and/or Category.
*  If the Category exists, it will create a tag for that post.
*  If the Category does not yet exist, it will create that Category and create a Tag for that post.
*  If the Category exists AND the post already has that Tag, nothing will happen.

The Category show page should display all posts with that particular category.
