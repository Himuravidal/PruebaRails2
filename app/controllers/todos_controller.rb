class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end


  def show
    @list = User.all
    @todos = Todo.all
  end

end
