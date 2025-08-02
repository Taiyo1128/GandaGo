class LikecsController < ApplicationController
     def create
    likec = current_user.likecs.create(restaurant_id: params[:restaurant_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    likec = Likec.find_by(restaurant_id: params[:restaurant_id], user_id: current_user.id)
    likec.destroy
    redirect_back(fallback_location: root_path)
  end
end
