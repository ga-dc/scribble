## Create

- Allow the user to create new posts and comments

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
