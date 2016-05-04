require 'test_helper'

class AboutusControllerTest < ActionController::TestCase
  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

end
