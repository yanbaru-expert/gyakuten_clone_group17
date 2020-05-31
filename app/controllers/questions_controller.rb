class QuestionsController < ApplicationController
  def index
    @question = Question.new
    @questions = Question.all.order(id: "DESC")
  end

  def show
    @question = Question.find_by(id: params[:id])
    @solutions = @question.solutions
    @solutions = Solution.new
    @question.increment!(:reviews_count, 1)
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to action: :index
      flash[:notice] = "登録に成功しました"
    else
      @questions = Question.all.order(created_at: :desc)
      render :index
    end
  end

  private
    def question_params
      params.require(:question).permit(:title, :detail)
    end
end
