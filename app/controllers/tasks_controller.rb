class TasksController < ApplicationController
    def index
        @sort = params[:sort].blank? ? 'id' : params[:sort]

        if @sort  == session[:sort]
            @direction = session[:direction] == 'ASC' ? 'DESC' : 'ASC'
         else
            @direction = 'ASC'
        end

        session[:sort] = @sort
        session[:direction] = @direction
        @tasks = Task.order(@sort + ' ' + @direction)
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        if @task.save
            redirect_to tasks_path, notice: "タスク「#{@task.name}」を作成しました"
        else
            render :new
        end
    end

    def show
        @task = find_task_by_id
    end

    def edit
        @task = find_task_by_id
    end

    def update
        @task = find_task_by_id
        if @task.update(task_params)
            redirect_to tasks_path, notice: "タスク「#{@task.name}」を更新しました"
        else
            render :edit
        end
    end

    def destroy
        @task = find_task_by_id
        @task.destroy
        redirect_to tasks_path, notice: "タスク「#{@task.name}」を削除しました"
    end

    private
    def task_params
        params.require(:task).permit(:name, :detail, :deadline_at, :status)
    end

    def search_params
        params.require(:task).permit(:search)
    end
    
    def find_task_by_id
      Task.find(params[:id])
    end
end
