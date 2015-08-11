class DashboardsController < ApplicationController
  def show
    @task = Task.new
    @tasks = current_user.tasks
  end
end