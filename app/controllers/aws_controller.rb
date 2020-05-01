class AwsController < ApplicationController

  def index
    @awsTexts = AwsText.all
  end

  def show
    @awsText = AwsText.find_by(id: params[:id])
  end
  
  
end
