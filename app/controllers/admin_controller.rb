class AdminController < ApplicationController

def fillup
@questions =Question.new

end

def create
  @questions = Question.new(params[:questions])
  if @questions.save
    # Handle a successful save.
  else
    @title = "Fill Data"
    render 'new'
  end
end

end
