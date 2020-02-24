class HistoryController < ApplicationController

    def newinput
        new_input = History.create(new_input_params)
        render json: new_input
    end
    
    private

    def new_input_params
        params.require(:history).permit(:search,:path)
    end 
  
end
