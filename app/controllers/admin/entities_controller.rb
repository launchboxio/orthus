class Admin::EntitiesController < Admin::AdminController
  before_action :find_entity, only: %i[edit show update delete]

  def index
    @entities = Entity.all
  end

  def edit; end

  def show; end

  def new
    @entity = Entity.new
  end

  def create

  end

  def update

  end

  def delete

  end

  private
  def find_entity
    @entity = Entity.find(params[:id])
  end
end
