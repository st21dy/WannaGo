class ListsController < ApplicationController
    def index
        @lists = List.all
        @list = List.new
    end

    def create
        @list = List.new(list_params)
        @list.user_id = current_user.id
        @list.save
        redirect_to lists_path
    end
    
    def destroy
        @list = List.find(params[:id])
        @list.destroy
        redirect_to lists_path
    end
    
    private

    def list_params
        params.require(:list).permit(:list_name, :image)
    end
end
