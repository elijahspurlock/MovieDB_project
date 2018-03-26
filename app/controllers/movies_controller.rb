class MoviesController < ApplicationController
	def index
		@movies = Movie.all	
	end

	def show
		@movie = Movie.find(params[:id])
	end
    
    def new
    	@movie = Movie.new
    end

    def edit
    end

    def create
    	@movie = Movie.new(params.require(:movie).permit(:title, :description))

    	if @movie.save
    	redirect_to @movie
        else 
        	render 'new'
        end 
    end


    def update
    end

    def destroy
    end

    private

    def movie_params
    	params.require(:movie).permit(:title, :text)
    end	

end

