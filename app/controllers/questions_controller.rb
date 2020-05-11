class QuestionsController < ApplicationController
  def index
    @question = Question.new
    @questions = Question.all.order(id: "DESC")
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to action :"index"
    else
      flash.now[:alert] = "登録に失敗しました"
      @questions = Question.all.order(created_at: :"DESC")
      render :index
    end
  end

  private
    def question_params
      params.require(:question).permit(:title, :detail)
    end
end
