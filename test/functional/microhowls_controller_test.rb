require 'test_helper'

class MicrohowlsControllerTest < ActionController::TestCase
  setup do
    @microhowl = microhowls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microhowls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microhowl" do
    assert_difference('Microhowl.count') do
      post :create, :microhowl => @microhowl.attributes
    end

    assert_redirected_to microhowl_path(assigns(:microhowl))
  end

  test "should show microhowl" do
    get :show, :id => @microhowl.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @microhowl.to_param
    assert_response :success
  end

  test "should update microhowl" do
    put :update, :id => @microhowl.to_param, :microhowl => @microhowl.attributes
    assert_redirected_to microhowl_path(assigns(:microhowl))
  end

  test "should destroy microhowl" do
    assert_difference('Microhowl.count', -1) do
      delete :destroy, :id => @microhowl.to_param
    end

    assert_redirected_to microhowls_path
  end
end
