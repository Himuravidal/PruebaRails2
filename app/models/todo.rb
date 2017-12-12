class Todo < ApplicationRecord
  has_many :pending_task
  has_many :users, through: :pending_task
end
