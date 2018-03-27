require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
 test "the truth" do
     assert true
  end
=begin  test 'GET index with no parameters' do
  	get "/index"
    assert_response :false
  end

  test Movie do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
  end
=end
end 