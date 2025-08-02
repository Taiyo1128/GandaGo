class SpotsController < ApplicationController

def index
        @spots = Spot.all
        @rank_spots = Spot.all.sort {|a,b| b.likebd_users.count <=> a.likebd_users.count}
    end

def new
    @Spot = Spot.new
  end

def create
    spot = Spot.new(spot_params)
    if spot.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @spot = Spot.find(params[:id])
  end

   def edit
    @spot = Spot.find(params[:id])
  end

  def update
    spot = Spot.find(params[:id])
    if spot.update(spot_params)
      redirect_to :action => "show", :id => spot.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    spot = Spot.find(params[:id])
    spot.destroy
    redirect_to action: :index
  end

  def like
    @spots = Spot.all
  end

  private
  def spot_params
    params.require(:spot).permit(:spot_name, :information, :lat, :lng)
  end
  
end
