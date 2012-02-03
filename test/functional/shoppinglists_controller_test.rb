require 'test_helper'

class ShoppinglistsControllerTest < ActionController::TestCase
  setup do
    @shoppinglist = shoppinglists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shoppinglists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shoppinglist" do
    assert_difference('Shoppinglist.count') do
      post :create, shoppinglist: @shoppinglist.attributes
    end

    assert_redirected_to shoppinglist_path(assigns(:shoppinglist))
  end

  test "should show shoppinglist" do
    get :show, id: @shoppinglist.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shoppinglist.to_param
    assert_response :success
  end

  test "should update shoppinglist" do
    put :update, id: @shoppinglist.to_param, shoppinglist: @shoppinglist.attributes
    assert_redirected_to shoppinglist_path(assigns(:shoppinglist))
  end

  test "should destroy shoppinglist" do
    assert_difference('Shoppinglist.count', -1) do
      delete :destroy, id: @shoppinglist.to_param
    end

    assert_redirected_to shoppinglists_path
  end
end
