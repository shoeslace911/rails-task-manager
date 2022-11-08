class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # if @tasks.completed == true
    #   '👌'
    # else
    #   '🍳'
    # end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to tasks_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  private

  # Strong Params
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
