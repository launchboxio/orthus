class Api::EntitiesController < Api::TenantController
  before_action :find_entity, only: %i[show, update, destory]
  def index
    @entities = Entity.all
    render json: @entities
  end
  def show
    render json: @entity
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
  def find_entity
    @entity = Entity.find(params[:id])
  end
end
