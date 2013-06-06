require 'test_helper'

class SgoalsControllerTest < ActionController::TestCase
  setup do
    @sgoal = sgoals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sgoals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sgoal" do
    assert_difference('Sgoal.count') do
      post :create, sgoal: { description: @sgoal.description, xp_value: @sgoal.xp_value }
    end

    assert_redirected_to sgoal_path(assigns(:sgoal))
  end

  test "should show sgoal" do
    get :show, id: @sgoal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sgoal
    assert_response :success
  end

  test "should update sgoal" do
    put :update, id: @sgoal, sgoal: { description: @sgoal.description, xp_value: @sgoal.xp_value }
    assert_redirected_to sgoal_path(assigns(:sgoal))
  end

  test "should destroy sgoal" do
    assert_difference('Sgoal.count', -1) do
      delete :destroy, id: @sgoal
    end

    assert_redirected_to sgoals_path
  end
end
