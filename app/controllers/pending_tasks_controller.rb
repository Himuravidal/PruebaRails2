class PendingTasksController < ApplicationController
  def update
    @pending = PendingTask.find(params[:id])
    @pending.done = !@pending.done
    @pending.save
    redirect_back(fallback_location: 'root')
  end
end
