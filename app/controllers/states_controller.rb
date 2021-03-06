class StatesController < ApplicationController
    
    before_action(:require_login)
    def index
        if params[:quantity]
          @states = State.quantity_search(params[:quantity])
        else
          @states = State.all
        end
    end
    
    def new
        @state = State.new
        @todos = Todo.all
    end
    
    def create
      @state = State.create(state_params)
      @state.user = current_user
      
      if params[:todo_id]
        @state.todo_id = params[:todo_id]
      end
      @state.save
      
      redirect_to todos_path
        
    end
    
    
    
    private
    
      def state_params
        params.require(:state).permit(:priority, :todo_id, :user_id)
      end
    
end
