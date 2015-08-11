class TasksController < ApplicationController
  def create
    task = current_user.tasks.build(task_parameters)
    task.save
    redirect_to dashboard_path
  end

  private

  def task_parameters
    params.require(:task).permit(:name, :details)
  end
end