class TasksController < ApplicationController

    def index 
        @tasks = Task.all 
    end

    def show 
        @task = Task.find(params[:id])
    end

    def new 
    end

    def create
        task = Task.new(task_params)

        if task.save
            redirect_to tasks_path, notice: "task created"
        else
            render :new
        end
    end
    def edit 
    end

    def update
        task = Task.find(params[:id])

        if task.update(task_params)
            redirect_to tasks_path, notice: "Task actualizada correctamente"
        else 
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        task = Task.find(params[:id])

        if task.destroy
            redirect_to tasks_path, notice: "task deleted"
        else
            render :show, status: :unprocessable_entity
        end
    end


    private

    def task_params
        params.require(:task).permit(:title, :description, :completed)
    end
end