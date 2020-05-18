require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  def setup
    @task = Task.new(description: 'Task 1', status: 'todo', order: 0)
  end

  test 'valid task' do
    assert @task.valid?
  end

  test 'invalid without description' do
    @task.description = nil
    refute @task.valid?, 'task is not valid without a description'
    assert_not_nil @task.errors[:description], 'no validation error for description present'
  end

  test 'invalid without status' do
    @task.status = nil
    refute @task.valid?, 'task is not valid without a status'
    assert_not_nil @task.errors[:status], 'no validation error for status present'
  end

  test 'invalid without order' do
    @task.order = nil
    refute @task.valid?, 'task is not valid without a order'
    assert_not_nil @task.errors[:order], 'no validation error for order present'
  end
end
