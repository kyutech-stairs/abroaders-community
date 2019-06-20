require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: "Example User", sex: "gender", address: "Example Address", 
    belonged_uni: "Example University")

  end

  test "should be valid" do
  assert_not @user.valid?
  end


end
