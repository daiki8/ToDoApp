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
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    if params[:task][:title].empty?
      @task.errors.add(:title, :blank)
      render 'edit'
    elsif @task.update_attributes(task_params)  # update\attributeを使うべき？
      flash[:success] = "task edited."
      redirect_to root_url
    else
      render 'edit'
    end
  end
  
  def delete
  end
  
  private
  
    def task_params
      params.require(:task).permit(:title)
    end
end
