class SolutionsController < ApplicationController

 def create
    @question = Question.find(params[:question_id])
    @solution = @question.solutions.build(solution_params)
  
    if @solution.save
        redirect_to @question, notice: "質問を投稿しました"
    else
      flash.now[:alert] = "エラーが発生しました"
       @solutions = @question.solutions
       render "questions/show"
    end
  end

  private
    def solution_params
      params.require(:solution).permit(:detail)
    end
end