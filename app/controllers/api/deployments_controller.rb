class Api::DeploymentsController < Api::TenantController
  before_action :find_deployment, only: %i[show update destroy]
  def index
    @deployments = Deployment.all
    render json: @deployments
  end

  def show
    render json: @deployment
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
  def find_deployment
    @deployment = Deployment.find(params[:id])
  end
end
