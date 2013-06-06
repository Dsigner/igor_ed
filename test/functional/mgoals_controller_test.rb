require 'test_helper'

class MgoalsControllerTest < ActionController::TestCase
  setup do
    @mgoal = mgoals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mgoals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mgoal" do
    assert_difference('Mgoal.count') do
      post :create, mgoal: { description: @mgoal.description, xp_value: @mgoal.xp_value }
    end

    assert_redirected_to mgoal_path(assigns(:mgoal))
  end

  test "should show mgoal" do
    get :show, id: @mgoal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mgoal
    assert_response :success
  end

  test "should update mgoal" do
    put :update, id: @mgoal, mgoal: { description: @mgoal.description, xp_value: @mgoal.xp_value }
    assert_redirected_to mgoal_path(assigns(:mgoal))
  end

  test "should destroy mgoal" do
    assert_difference('Mgoal.count', -1) do
      delete :destroy, id: @mgoal
    end

    assert_redirected_to mgoals_path
  end
end
