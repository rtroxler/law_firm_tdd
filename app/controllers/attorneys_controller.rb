class AttorneysController < MainController
  def create
    @firm.attorneys.create(attorneys_params)
    redirect_to firm_attorneys_path
  end

  def index
  end

  private
  def attorneys_params
    params.require(:attorney).permit(:first_name, :last_name, :middle_name, :suffix)
  end
end
