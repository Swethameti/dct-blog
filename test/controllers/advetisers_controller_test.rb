require 'test_helper'

class AdvetisersControllerTest < ActionController::TestCase
  setup do
    @advetiser = advetisers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advetisers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advetiser" do
    assert_difference('Advetiser.count') do
      post :create, advetiser: { name: @advetiser.name }
    end

    assert_redirected_to advetiser_path(assigns(:advetiser))
  end

  test "should show advetiser" do
    get :show, id: @advetiser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advetiser
    assert_response :success
  end

  test "should update advetiser" do
    patch :update, id: @advetiser, advetiser: { name: @advetiser.name }
    assert_redirected_to advetiser_path(assigns(:advetiser))
  end

  test "should destroy advetiser" do
    assert_difference('Advetiser.count', -1) do
      delete :destroy, id: @advetiser
    end

    assert_redirected_to advetisers_path
  end
end
