# Ref: https://git.generalassemb.ly/ga-wdi-lessons/rails-activerecord && https://git.generalassemb.ly/ga-wdi-lessons/rails-views#we-do-artists-create-action
# post === artist
class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
end

