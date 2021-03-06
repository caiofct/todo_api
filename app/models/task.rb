class Task < ApplicationRecord
  enum status: {
    todo: 1,
    done: 2
  }

  validates :description, presence: true
  validates :order, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :status, presence: true, inclusion: { in: Task.statuses.keys }
end
