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
        todo = Todo.new(todo_params)
        if todo.save
            redirect_to todo_path(todo)
        else
            redirect_to new_todo_path
        end             
        
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
        params.require(:todo).permit(:name)
        end
end
