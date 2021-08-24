class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end
 
    def create
        @restaurants = Restaurant.new(restaurants_params)
        @restaurants.save
 
        redirect_to restaurants_path
    end
 
    def new
        @restaurant = Restaurant.new
    end
 
    def edit
        @restaurant = Restaurant.find(params[:id])
    end
 
    def show
        @restaurant = Restaurant.find(params[:id])
    end
 
    def update
        @restaurant = Restaurant.find(params[:id])
        @restaurant.update(restaurants_params)
        redirect_to restaurant_path(@restaurant)
    end
 
 
    def delete
        @restaurant = Restaurant.find(params[:id])
        @restaurants.destroy
        redirect_to restaurants_path
    end
    private
    def restaurants_params
        params.require(:restaurant).permit(:title, :details,)
    end
end
