require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup 
    @user = User.new(name: "User example", email: "user@example.com")
  end
  
  
  test "should get new" do
    get users_new_url
    assert_response :success
  end

  test "email should be present" do
    @user.email = " "
    assert_not @user.valid?
  end

  test "name should be present" do 
    @user.name = " "
    assert_not @user.valid?
  end 

  test "email adresses should be unique" do
    duplicate_user = @user.dup 
    @user.save
    assert_not duplicate_user.valid?
  
  end

end
