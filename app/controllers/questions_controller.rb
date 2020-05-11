class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all
  
    @question = Question.new
  end
  
  def show
    # 質問
    @question = Question.find_by(id: params[:id])
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