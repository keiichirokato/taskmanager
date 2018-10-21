class TasksController < ApplicationController
    def show
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
end
