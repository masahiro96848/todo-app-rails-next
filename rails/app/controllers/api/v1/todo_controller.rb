class Api::V1::TodoController < ApplicationController
  def index
    render json: {message: "Success Response"}, status: :ok
  end
end
