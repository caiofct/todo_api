require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get api_v1_tasks_url, as: :json
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post api_v1_tasks_url, params: { task: { description: 'test', order: 1, status: 'todo' } }, as: :json
    end

    assert_response 201
  end

  test "should show task" do
    get api_v1_task_url(@task), as: :json
    assert_response :success
  end

  test "should update task" do
    patch api_v1_task_url(@task), params: { task: { status: 'done' } }, as: :json
    assert_response 200
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete api_v1_task_url(@task), as: :json
    end

    assert_response 204
  end
end
