class Comments < ApplicationController

def index
  @commennts = Comments.all
end

def show
  @commennts = Comments.find(:id)
end

end
