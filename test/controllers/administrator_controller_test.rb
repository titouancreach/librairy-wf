require 'test_helper'

class AdministratorControllerTest < ActionController::TestCase
  test "should get administrator" do
    get :administrator
    assert_response :success
  end

end
