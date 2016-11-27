require 'test_helper'

class PredmetsControllerTest < ActionController::TestCase
  setup do
    @predmet = predmets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:predmets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create predmet" do
    assert_difference('Predmet.count') do
      post :create, predmet: { nazov: @predmet.nazov }
    end

    assert_redirected_to predmet_path(assigns(:predmet))
  end

  test "should show predmet" do
    get :show, id: @predmet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @predmet
    assert_response :success
  end

  test "should update predmet" do
    patch :update, id: @predmet, predmet: { nazov: @predmet.nazov }
    assert_redirected_to predmet_path(assigns(:predmet))
  end

  test "should destroy predmet" do
    assert_difference('Predmet.count', -1) do
      delete :destroy, id: @predmet
    end

    assert_redirected_to predmets_path
  end
end
