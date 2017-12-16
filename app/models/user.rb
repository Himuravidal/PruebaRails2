class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pending_tasks
  has_many :todos, through: :pending_tasks
  after_create :load_pending_task



  private
  def load_pending_task
    Todo.all.each do |todo|
      PendingTask.create(user_id: self.id, todo_id: todo.id)
    end
  end

end
