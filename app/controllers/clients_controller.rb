class ClientsController < MainController
  def index
    @clients = @firm.clients
  end

  def create
    @client = @firm.clients.create(client_params)

    respond_to(:turbo_stream)
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :middle_name, :last_name, :email, :firm_id, :attorney_id)
  end
end
