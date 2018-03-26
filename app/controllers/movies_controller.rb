class MoviesController < ApplicationController
	def new 
	end

	def show 
	end
    
    def create
    @movie = Movie.new(params.require(:movie).permit(:title,:text))

    @movie.save
    redirect_to @movie
    end

    private
    def movie_params
    params.require(:movie).permit(:title, :text)
    end	

end

