class Api::WebhooksController < Api::TenantController
  before_action :find_webhook, only: %i[show update destroy]
  def index
    @webhooks = Webhook.all
    render json: @webhooks
  end

  def show
    render json: @webhook
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
  def find_webhook
    @webhook = Webhook.find(params[:id])
  end
end
