class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all
  end
  
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_url
    else
      @tasks = Task.all # この対処法でいいのか？
      render 'tasks/index'
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def delete
  end
  
  private
  
    def task_params
      params.require(:task).permit(:title)
    end
end
