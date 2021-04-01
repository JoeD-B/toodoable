class TodosController < ApplicationController
    def index
        @todos = Todo.all
    end
    def show
        @todo = Todo.find_by(id: params[:id])
    end
    def new
        @todo = Todo.new
        @todo.states.build 
    end
    
    def create
        @todo = Todo.new(todo_params)

       

        binding.pry

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
        params.require(:todo).permit(:content, states_attributes: [:priority])
        end
end
