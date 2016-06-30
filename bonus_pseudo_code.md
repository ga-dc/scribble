```rb
- Create two additional models: Category and Tag.

rails g model category
rails g model tag

TAG MIGRATE
t.references :category
t.references :post

* Tag represents the join table between Post and Category.

TAG MODEL
belongs_to :category
belongs_to :post

CATEGORY MODEL
has_many :tags
has_many :posts, through: :tags

POST MODEL
has_many :tags
has_many :categories, through: :tags

ROUTER
resources :post do
  member do
    post 'add_tag'
    delete 'remove_tag'
  end
end
```
