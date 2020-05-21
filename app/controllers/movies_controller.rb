class MoviesController < ApplicationController
 def index

   movie_genre = ["Basic","Git","Ruby","Ruby on Rails"]
   # PER = 10

   case params[:genre]
   when "Talk","Live","Php","Writing","Marketing","Movie"
      @movies = Movie.where(genre: params[:genre]).page(params[:page]).per(10)
   else
      @movies = Movie.where(genre: movie_genre).page(params[:page]).per(10)
   end
   
 end
end  