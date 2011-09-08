class QuestionsController < ApplicationController
def create
  @questions = Question.new(params[:question])
  if @questions.save!
redirect_to @questions
  else
@questions.errors.full_messages
    @title = "Fill Data"
 render 'new'

  end
end


def index
  @title = "All Questions"
  @questions = Question.all
end
def show
  @questions = Question.find(params[:id])
  @title = @questions.admin_rating
end

end
