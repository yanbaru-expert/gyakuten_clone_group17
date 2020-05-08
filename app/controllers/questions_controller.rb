class QuestionsController < ApplicationController
  def index
    @question = Question.new
    @questions = Question.all.order(id: "DESC")
  end

  def new
  end

  def create
    @question = Question.new(question_params)
  end

  private
    def question_params
      params.require(:question).permit(:title, :detail)
    end
end
