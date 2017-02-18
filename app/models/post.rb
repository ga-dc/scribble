class Model < ApplicationRecord
  has_many :comments, dependent: :destroy
end
