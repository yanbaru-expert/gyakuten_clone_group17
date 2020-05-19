class LinesController < ApplicationController
  def index
    @lineTexts = LineText.all
  end

end
