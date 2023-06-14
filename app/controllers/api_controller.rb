class ApiController < ApplicationController
  # TODO: Authentication

  # Respond to JSON by default
  respond_to :json

  # Wrap RecordNotFound for a standard 404 response
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  def not_found
    respond_with '{"error": "not_found"}', status: :not_found
  end
end