class TodosController < ApplicationController
    def index
        @todos = Todo.all
    end
    def show
        @todo = Todo.find_by(id: params[:id])
    end
    def new
        @todo = Todo.new
    end
    
    def create
        todo = Todo.create(todo_params)
        redirect_to todo_path(todo)
    end
    
    def edit
        @todo = Todo.find_by(id: params[:id])
    end
    
    def update
        todo = Todo.find_by(id: params[:id])
        todo.update(todo_params)
        redirect_to(todo_path(todo))
    end
    
    
    def destroy
        todo = Todo.find_by(id: params[:id])
        todo.delete
        redirect_to items_path
    end
    
    private

        def todo_params
        params.require(:todo)
        end
end
