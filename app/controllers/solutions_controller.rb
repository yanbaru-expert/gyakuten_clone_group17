class SolutionsController < ApplicationController
 def create
    @question = Question.find(params[:question_detail])
    @solution = Solution.find(params[:solution_detail])
  binding.pry
    if @solution.save
      redirect_to questions_path, notice: "質問を投稿しました"
    else
      flash.now[:alert] = "エラーが発生しました"
      @questions = Question.all
      render :index
    end
  end
end