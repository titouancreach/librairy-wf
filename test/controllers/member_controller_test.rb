require 'test_helper'

class MemberControllerTest < ActionController::TestCase
  test "should get member" do
    get :member
    assert_response :success
  end

end
