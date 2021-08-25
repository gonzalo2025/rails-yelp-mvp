class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: %i[show edit update destroy]

    def index
        @restaurants = Restaurant.all
    end
 
    def create
        @restaurant = Restaurant.new(restaurant_params)
        if @restaurant.save
 
           redirect_to @restaurant
        else
            render :new
        end
    end
 
    def new
        @restaurant = Restaurant.new
    end
 
    def edit
    end
 
    def show
    end
 
    def update
        @restaurant.update(restaurants_params)
        redirect_to restaurant_path(@restaurant)
    end
 
 
    def destroy
        @restaurant.destroy
        redirect_to restaurants_path
    end

    private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end
    
end
