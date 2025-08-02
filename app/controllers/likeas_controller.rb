class LikeasController < ApplicationController
    def create
    likea = current_user.likeas.create(hotel_id: params[:hotel_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    likea = Likea.find_by(hotel_id: params[:hotel_id], user_id: current_user.id)
    likea.destroy
    redirect_back(fallback_location: root_path)
  end
end
