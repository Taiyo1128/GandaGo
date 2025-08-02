class VlogsController < ApplicationController

  def index
        @vlogs = Vlog.all
        @rank_vlogs = Vlog.all.sort {|a,b| b.liked_users.count <=> a.liked_users.count}
    end

  def new
    @vlog = Vlog.new
  end

  def create
    vlog = Vlog.new(vlog_params)
    vlog.user_id = current_user.id
    if vlog.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

   def show
    @vlog = Vlog.find(params[:id])
  end

   def edit
    @vlog = Vlog.find(params[:id])
  end

   def update
    vlog = Vlog.find(params[:id])
    if vlog.update(vlog_params)
      redirect_to :action => "show", :id => vlog.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    vlog = Vlog.find(params[:id])
    vlog.destroy
    redirect_to action: :index
  end

  def top
  end

  def like
    @vlogs = Vlog.all
  end

  private
  def vlog_params
    params.require(:vlog).permit(:vlog_name, :information, :image)
  end

end


