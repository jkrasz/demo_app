require 'test_helper'

class Micropost2sControllerTest < ActionController::TestCase
  setup do
    @micropost2 = micropost2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropost2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropost2" do
    assert_difference('Micropost2.count') do
      post :create, micropost2: { content: @micropost2.content, user_id: @micropost2.user_id }
    end

    assert_redirected_to micropost2_path(assigns(:micropost2))
  end

  test "should show micropost2" do
    get :show, id: @micropost2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropost2
    assert_response :success
  end

  test "should update micropost2" do
    patch :update, id: @micropost2, micropost2: { content: @micropost2.content, user_id: @micropost2.user_id }
    assert_redirected_to micropost2_path(assigns(:micropost2))
  end

  test "should destroy micropost2" do
    assert_difference('Micropost2.count', -1) do
      delete :destroy, id: @micropost2
    end

    assert_redirected_to micropost2s_path
  end
end
