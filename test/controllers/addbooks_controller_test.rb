require 'test_helper'

class AddbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @addbook = addbooks(:one)
  end

  test "should get index" do
    get addbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_addbook_url
    assert_response :success
  end

  test "should create addbook" do
    assert_difference('Addbook.count') do
      post addbooks_url, params: { addbook: { addr: @addbook.addr, addyear: @addbook.addyear, name: @addbook.name } }
    end

    assert_redirected_to addbook_url(Addbook.last)
  end

  test "should show addbook" do
    get addbook_url(@addbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_addbook_url(@addbook)
    assert_response :success
  end

  test "should update addbook" do
    patch addbook_url(@addbook), params: { addbook: { addr: @addbook.addr, addyear: @addbook.addyear, name: @addbook.name } }
    assert_redirected_to addbook_url(@addbook)
  end

  test "should destroy addbook" do
    assert_difference('Addbook.count', -1) do
      delete addbook_url(@addbook)
    end

    assert_redirected_to addbooks_url
  end
end
