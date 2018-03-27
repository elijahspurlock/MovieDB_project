require 'test_helper'

class MovieTest < ActiveSupport::TestCase

  test "cannot create a movie with an empty title" do
  	movie = Movie.new
  	assert !movie.validate

  	movie = Movie.new(title: "" )
  	assert !movie.validate
  end

  test "can save a movie with a title" do
  	movie = Movie.new(title: "I kill giants", description: "a"*10)
  	assert movie
  	assert movie.validate
  end

  	 test "cannot save a movie with description less than 10" do
  	movie = Movie.new(title: "I kill giants", description: "a"*9)
  	assert movie
  	assert !movie.validate
  end

  test "can save a movie with a title with a single character title" do
  	movie = Movie.new(title: "X", description: "ksdddddddd")
  	assert movie.validate
  	assert_equal "X", movie.title, "can get the title"
  end

  test "can create a movie with a title and description" do
    movie = Movie.new(title:"k", description:"k"*10)
    assert movie.validate
  end 

  test "cannot create a movie without a title but with description" do
    movie = Movie.new(description:"ksdf")
    assert !movie.validate
  end 
# test: ok to create a movie with a title and a descriptiom
# test: !ok to creatre a movie with a desc and no title



end
