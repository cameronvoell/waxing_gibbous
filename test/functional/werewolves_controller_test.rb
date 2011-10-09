require 'test_helper'

class WerewolvesControllerTest < ActionController::TestCase
  setup do
    @werewolf = werewolves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:werewolves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create werewolf" do
    assert_difference('Werewolf.count') do
      post :create, :werewolf => @werewolf.attributes
    end

    assert_redirected_to werewolf_path(assigns(:werewolf))
  end

  test "should show werewolf" do
    get :show, :id => @werewolf.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @werewolf.to_param
    assert_response :success
  end

  test "should update werewolf" do
    put :update, :id => @werewolf.to_param, :werewolf => @werewolf.attributes
    assert_redirected_to werewolf_path(assigns(:werewolf))
  end

  test "should destroy werewolf" do
    assert_difference('Werewolf.count', -1) do
      delete :destroy, :id => @werewolf.to_param
    end

    assert_redirected_to werewolves_path
  end
end
