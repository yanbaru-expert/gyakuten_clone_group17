class TextsController < ApplicationController
    def index
        @texts = Text.all
    end

    def search
        @texts = Text.where('title LIKE(?)', "%#{params[:keyword]}%")
        render json: @texts
    end
end
