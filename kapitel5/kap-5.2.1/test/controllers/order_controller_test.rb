require 'test_helper'

class OrderControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get update_states" do
    get :update_states
    assert_response :success
  end

end
