class TaskActivationsController < ApplicationController
  def update
    task = Task.find(params[:id])
    if task && !task.activated?
      task.activate
      flash[:success] = "task activated!"
      redirect_to root_url
    elsif task && task.activated?
      task.unactivate
      flash[:success] = "task unactivated!"
      redirect_to root_url
    else
      flash[:danger] = "Invalid activation link"
      redirect_to root_url
    end
  end
end
