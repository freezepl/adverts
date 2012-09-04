require 'test_helper'

class AdvertsControllerTest < ActionController::TestCase
  setup do
    @advert = adverts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adverts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advert" do
    assert_difference('Advert.count') do
      post :create, advert: { category_id: @advert.category_id, description: @advert.description, expire: @advert.expire, phone: @advert.phone, price: @advert.price, title: @advert.title, user_id: @advert.user_id }
    end

    assert_redirected_to advert_path(assigns(:advert))
  end

  test "should show advert" do
    get :show, id: @advert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advert
    assert_response :success
  end

  test "should update advert" do
    put :update, id: @advert, advert: { category_id: @advert.category_id, description: @advert.description, expire: @advert.expire, phone: @advert.phone, price: @advert.price, title: @advert.title, user_id: @advert.user_id }
    assert_redirected_to advert_path(assigns(:advert))
  end

  test "should destroy advert" do
    assert_difference('Advert.count', -1) do
      delete :destroy, id: @advert
    end

    assert_redirected_to adverts_path
  end
end
