class Todo < ApplicationRecord
  has_many :pending_tasks
  has_many :users, through: :pending_tasks
end
