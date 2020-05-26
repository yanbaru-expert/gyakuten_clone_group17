class LinesController < ApplicationController
  def index
    @lineTexts = LineText.all
  end

  def show
    @lineText = LineText.find_by(id: params[:id])
  end
  
end
