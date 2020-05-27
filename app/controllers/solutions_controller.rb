class SolutionsController < ApplicationController
 def create
    @question = Question.new(question_params[:id])
    if @solution.save
      redirect_to questions_path, notice: "質問を投稿しました"
    else
      flash.now[:alert] = "エラーが発生しました"
      @questions = Question.all
      render :index
    end
 end
end