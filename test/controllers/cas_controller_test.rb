require 'test_helper'

class CasControllerTest < ActionController::TestCase
  setup do
    @ca = cas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ca" do
    assert_difference('Ca.count') do
      post :create, ca: {  }
    end

    assert_redirected_to ca_path(assigns(:ca))
  end

  test "should show ca" do
    get :show, id: @ca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ca
    assert_response :success
  end

  test "should update ca" do
    patch :update, id: @ca, ca: {  }
    assert_redirected_to ca_path(assigns(:ca))
  end

  test "should destroy ca" do
    assert_difference('Ca.count', -1) do
      delete :destroy, id: @ca
    end

    assert_redirected_to cas_path
  end
end
