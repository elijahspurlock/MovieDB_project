class MoviesController < ApplicationController
	def new 
	end

	def show 
	end
    
    def create
    	render plain: params[:movie].inspect
    end
=begin	def mum
	end	
=end	

end

