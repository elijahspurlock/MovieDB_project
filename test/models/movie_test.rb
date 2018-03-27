require 'test_helper'

class MovieTest < ActiveSupport::TestCase

  test "cannot create a movie with an empty title" do
  	movie = Movie.new
  	assert !movie.validate

  	movie = Movie.new(title: "" )
  	assert !movie.validate
  end

  test "can save a movie with a title" do
  	movie = Movie.new(title: "I kill giants")
  	assert movie
  	assert movie.validate
  end

  test "can save a movie with a title with a single character" do
  	movie = Movie.new(title: "X" )
  	assert movie.validate
  	assert_equal "X", movie.title, "can get the title"
  end

  test "can create a movie with a title and description" do
    movie = Movie.new(title:"k", description:"ksdf")
    assert movie.validate
  end 

  test "can create a movie without a title but with description" do
    movie = Movie.new(description:"ksdf")
    assert !movie.validate
  end 
# test: ok to create a movie with a title and a descriptiom
# test: !ok to creatre a movie with a desc and no title



end
