class QuestionsController < ApplicationController

  # 新規作成画面に対応するアクション
  def new
    @question = Question.new
  end

  # 一覧画面に対応するアクション
  def index
    @questions = Question.all
  end
  
  # 新規登録するためのアクション
  def create
    Question.create(question_params)
  end

  # 削除を行うためのアクション
  def destroy
    question = Question.find(params[:id])
    question.delete
  end

private

    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:title, :detail)
    end

end

   