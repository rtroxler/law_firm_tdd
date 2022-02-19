class FirmsController < ApplicationController
  def dashboard
    unless current_user
      redirect_to new_user_session_path and return
    end
    @firm = current_user.firm
  end
end

