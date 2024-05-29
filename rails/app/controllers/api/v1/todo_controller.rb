class Api::V1::TodoController < ApplicationController
  def index
    render json: {message: "Success Todo Check!"}, status: :ok
  end
end
