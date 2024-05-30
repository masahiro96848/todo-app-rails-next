class Api::V1::TodoController < ApplicationController
  def index
    @todos = Todo.order(created_at: :desc).limit(10)

    render json: @todos
  end
end
