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
        @todo = Todo.new(todo_params)
<<<<<<< HEAD
<<<<<<< HEAD
       
=======
>>>>>>> parent of 284d5e7... added nested for for priority state within todo. still cannot display statepriority on page
=======
        binding.pry
>>>>>>> parent of a504bbb... db is broken
        if @todo.save
            redirect_to todo_path(@todo)
        else
            @errors = @todo.errors.full_messages
            render :new
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
        redirect_to todos_path
    end
    
    private

        def todo_params
        params.require(:todo).permit(:name)
        end
end
