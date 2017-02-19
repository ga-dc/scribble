# class CreateComments < ActiveRecord::Migration[5.0]
# class Comments < ActiveRecord::Base
class Comment < ApplicationRecord
  belongs_to :post
end
