class TasksController < ApplicationController
    def index
        @tasks = Task.order('created_at DESC')
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        @task.save
        redirect_to tasks_path, notice: "タスク「#{@task.name}」を作成しました"
    end

    def show
        @task = find_task_by_id
    end

    def edit
        @task = find_task_by_id
    end

    def update
        @task = find_task_by_id
        @task.update(task_params)
        redirect_to tasks_path, notice: "タスク「#{@task.name}」を更新しました"
    end

    def destroy
        @task = find_task_by_id
        @task.destroy
        redirect_to tasks_path, notice: "タスク「#{@task.name}」を削除しました"
    end

    private
    def task_params
        params.require(:task).permit(:name, :detail)
    end
    
    def find_task_by_id
      Task.find(params[:id])
    end
end
