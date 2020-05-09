class SolutionsController < ApplicationController

  def create
    # デバッグ用コメント
    # puts "******************************"
    # puts "********   START    **********"
    # puts "******************************"
    ans = params[:answer]
    questionId = params[:question_id]
    
    if ans.length > 0
      # puts 'OK'
      solutions = Solution.new(answer: ans, question_id: questionId)
      solutions.save
      flash[:success] = "回答を投稿しました。"
      # redirect_to(question_path)
      redirect_to("/questions/#{questionId}")
    else
      # puts 'NG'
      flash[:danger] = "1つのエラーがあります。"
      # redirect_to(question_path)
      redirect_to("/questions/#{questionId}")
    end
    
    # デバッグ用コメント
    # puts "******************************"
    # puts "********    END     **********"
    # puts "******************************"
    
  end
  
end