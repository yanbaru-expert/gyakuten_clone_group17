class SolutionsController < ApplicationController

  def create
    ans = params[:answer]
    if ans.length > 0
      puts 'OK'
      questionId = params[:id]
      @solutions = Solution.new(answer: ans, question_id: questionId)
      @solutions.save
      flash[:success] = "回答を投稿しました。"
      redirect_to(question_path)
    else
      puts 'NG'
      flash[:danger] = "1つのエラーがあります。"
      redirect_to(question_path)
    end
    

  end
  
end