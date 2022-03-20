class ListController < ApplicationController
    def new
        @list = List.new
    end

    def create
        @list = List.new(list_params)
        @list.user_id = current_user.id
        @list.save
        redirect_to list_path
    end

    def index
        @lists = List.all
    end
    
    def went
    end
    
    def destroy
    end
    
    private

    def list_params
        params.require(:list).permit(:list_name, :image)
    end
end
