require 'test_helper'

class BeddingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bedding = beddings(:one)
  end

  test "should get index" do
    get beddings_url
    assert_response :success
  end

  test "should get new" do
    get new_bedding_url
    assert_response :success
  end

  test "should create bedding" do
    assert_difference('Bedding.count') do
      post beddings_url, params: { bedding: { count: @bedding.count, person_id: @bedding.person_id, type: @bedding.type } }
    end

    assert_redirected_to bedding_url(Bedding.last)
  end

  test "should show bedding" do
    get bedding_url(@bedding)
    assert_response :success
  end

  test "should get edit" do
    get edit_bedding_url(@bedding)
    assert_response :success
  end

  test "should update bedding" do
    patch bedding_url(@bedding), params: { bedding: { count: @bedding.count, person_id: @bedding.person_id, type: @bedding.type } }
    assert_redirected_to bedding_url(@bedding)
  end

  test "should destroy bedding" do
    assert_difference('Bedding.count', -1) do
      delete bedding_url(@bedding)
    end

    assert_redirected_to beddings_url
  end
end
