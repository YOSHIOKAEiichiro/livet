require 'test_helper'

class RequestitemsControllerTest < ActionController::TestCase
  setup do
    @requestitem = requestitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requestitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requestitem" do
    assert_difference('Requestitem.count') do
      post :create, requestitem: { groupid: @requestitem.groupid, mail: @requestitem.mail, memo: @requestitem.memo, name: @requestitem.name, place: @requestitem.place, quantity: @requestitem.quantity, staff: @requestitem.staff }
    end

    assert_redirected_to requestitem_path(assigns(:requestitem))
  end

  test "should show requestitem" do
    get :show, id: @requestitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @requestitem
    assert_response :success
  end

  test "should update requestitem" do
    patch :update, id: @requestitem, requestitem: { groupid: @requestitem.groupid, mail: @requestitem.mail, memo: @requestitem.memo, name: @requestitem.name, place: @requestitem.place, quantity: @requestitem.quantity, staff: @requestitem.staff }
    assert_redirected_to requestitem_path(assigns(:requestitem))
  end

  test "should destroy requestitem" do
    assert_difference('Requestitem.count', -1) do
      delete :destroy, id: @requestitem
    end

    assert_redirected_to requestitems_path
  end
end
