require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user = User.new(name:'sample', email:'sample@me.org')
	end

	test "should be valid" do 
		assert @user.valid?
	end
end