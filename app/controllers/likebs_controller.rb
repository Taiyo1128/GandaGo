class LikebsController < ApplicationController
     def create
    likeb = current_user.likebs.create(spot_id: params[:spot_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    likeb = Likeb.find_by(spot_id: params[:spot_id], user_id: current_user.id)
    likeb.destroy
    redirect_back(fallback_location: root_path)
  end
end
