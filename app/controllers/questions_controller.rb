class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order(id: "DESC")
  end

  def show
    @question = Question.find_by(id: params[:id])
  end
  
  def new
    @question = Question.new
    
  end
  
  def create
    Question.create(question_params)
    redirect_to questions_path
  end
  
  private 

  def question_params
    params.require(:question).permit(:title, :detail)
    
  end


end