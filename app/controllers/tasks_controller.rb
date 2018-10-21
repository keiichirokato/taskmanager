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
end
