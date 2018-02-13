# Ref: https://git.generalassemb.ly/ga-wdi-lessons/rails-activerecord && https://git.generalassemb.ly/ga-wdi-lessons/rails-views#we-do-artists-create-action

# comment === song
class Comment < ApplicationRecord
    belongs_to :post
end



