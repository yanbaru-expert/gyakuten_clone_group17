class AwsController < ApplicationController

  def index
    @awsTexts = AwsText.all
  end
  
end
