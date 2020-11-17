class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all.order(creted_at: :desc)
  end

  def create
    @task  = Task.new(tasks_params)
    if @task.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def tasks_params
    params.requre(:task).permit(:ttle, :text)
  end
end
