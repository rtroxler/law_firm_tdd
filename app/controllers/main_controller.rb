class MainController < ApplicationController
  before_action :authenticate_user!
  before_action :set_firm
  layout 'firm'

  def dashboard
  end

  def about_us
  end

  private
  def set_firm
    @firm = current_user.firm
  end
end
