class User < ActiveRecord::Base

def validate_user
  validates_confirmation_of :password
end


end
