class StatesController < ApplicationController
    def new
        @state = State.new
        
    end

    def create
        @state = State.create(state_params)
        redirect_to todos_path
    end    

    private

    def state_params
        params.require(:state).permit(:priority, :todo_id)
    end
end

