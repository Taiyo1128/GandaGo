class HotelsController < ApplicationController
    def index
        @hotels = Hotel.all
        @rank_hotels = Hotel.all.sort {|a,b| b.likead_users.count <=> a.likead_users.count}
    end
    
    
  def new
    @Hotel = Hotel.new
  end

  def create
    hotel = Hotel.new(hotel_params)
    if hotel.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

   def edit
    @hotel = Hotel.find(params[:id])
  end

  def update
    hotel = Hotel.find(params[:id])
    if hotel.update(hotel_params)
      redirect_to :action => "show", :id => hotel.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    hotel = Hotel.find(params[:id])
    hotel.destroy
    redirect_to action: :index
  end

  def like
    @hotels = Hotel.all
  end

  private
  def hotel_params
    params.require(:hotel).permit(:hotel_name, :information, :lat, :lng)
  end
end
