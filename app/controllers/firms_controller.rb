class FirmsController < MainController
  before_action :authenticate_user!
  before_action :set_firm
  layout 'firm'

  def dashboard
  end

  def about_us
  end

  def attorneys_list
  end
end

