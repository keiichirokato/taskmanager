class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(params.require(:task).permit(:name, :detail))
        @task.save
        redirect_to tasks_path
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
        @task.update(params.require(:task).permit(:name, :detail))
        redirect_to tasks_path
    end
end
