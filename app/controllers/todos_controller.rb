class TodosController < ApplicationController
before_action :authenticate_user!
  def index
    @user = current_user
  end


  def show
    @todos = Todo.find(params[:id])
  end

end
