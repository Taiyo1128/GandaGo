class RestaurantsController < ApplicationController

def index
        @restaurants = Restaurant.all
        @rank_restaurants = Restaurant.all.sort {|a,b| b.likecd_users.count <=> a.likecd_users.count}
end

def new
    @Restaurant = Restaurant.new
end

def create
    restaurant = Restaurant.new(restaurant_params)
    if restaurant.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

   def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    restaurant = Restaurant.find(params[:id])
    if restaurant.update(restaurant_params)
      redirect_to :action => "show", :id => restaurant.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    redirect_to action: :index
  end

  def like
    @restaurants = Restaurant.all
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:restaurant_name, :information, :lat, :lng)
  end

end
