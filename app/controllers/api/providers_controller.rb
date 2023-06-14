class Api::ProvidersController < Api::TenantController
  before_action :find_provider, only: %i[show update destroy]

  def index
    @providers = Provider.all
    render json: @providers
  end

  def show
    render json: @provider
  end

  def create
    head :not_implemented
  end

  def update
    head :not_implemented
  end

  def destroy
    head :not_implemented
  end

  private

  def find_provider
    @provider = Provider.find(params[:id])
  end
end
