class SpicesController < ApplicationController
    def index 
       render json: Spice.all 
    end

    def create
        render json Spice.create(spice_params)
    end

    def update 
        spice = Spice.find(params[:id])
        render json: spice.update(spice_params)
    end
    
    def delete 
        render json: Spice.find(params[:id]).destroy
    end
    
    private 

    def spice_params
        params.permit(:title, :image, :description, :description, :title)
    end
end
