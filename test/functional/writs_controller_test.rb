require 'test_helper'

class WritsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:writs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create writ" do
    assert_difference('Writ.count') do
      post :create, :writ => { }
    end

    assert_redirected_to writ_path(assigns(:writ))
  end

  test "should show writ" do
    get :show, :id => writs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => writs(:one).to_param
    assert_response :success
  end

  test "should update writ" do
    put :update, :id => writs(:one).to_param, :writ => { }
    assert_redirected_to writ_path(assigns(:writ))
  end

  test "should destroy writ" do
    assert_difference('Writ.count', -1) do
      delete :destroy, :id => writs(:one).to_param
    end

    assert_redirected_to writs_path
  end
end
