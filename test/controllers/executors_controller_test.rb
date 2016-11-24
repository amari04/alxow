require 'test_helper'

class ExecutorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @executor = executors(:one)
  end

  test "should get index" do
    get executors_url
    assert_response :success
  end

  test "should get new" do
    get new_executor_url
    assert_response :success
  end

  test "should create executor" do
    assert_difference('Executor.count') do
      post executors_url, params: { executor: { employee_id: @executor.employee_id, executortype: @executor.executortype, request_id: @executor.request_id } }
    end

    assert_redirected_to executor_url(Executor.last)
  end

  test "should show executor" do
    get executor_url(@executor)
    assert_response :success
  end

  test "should get edit" do
    get edit_executor_url(@executor)
    assert_response :success
  end

  test "should update executor" do
    patch executor_url(@executor), params: { executor: { employee_id: @executor.employee_id, executortype: @executor.executortype, request_id: @executor.request_id } }
    assert_redirected_to executor_url(@executor)
  end

  test "should destroy executor" do
    assert_difference('Executor.count', -1) do
      delete executor_url(@executor)
    end

    assert_redirected_to executors_url
  end
end
