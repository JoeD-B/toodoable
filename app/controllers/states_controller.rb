class StatesController < ApplicationController
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
    
        redirect_to todos_path
        # if @state.save
        #     redirect_to todo_path(@todo)
        # else
        #   # redirect_to new_todo_path
        #   @errors = @todo.errors.full_messages
        #   render :new
        # end
    end
    
    
    
    private
    
      def state_params
        params.require(:state).permit(:priority, :todo_id)
      end
    
end
