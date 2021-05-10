class Api::StoresController < ApplicationController
  def create
    store = Store.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if store.save
      render json: { message: "Store created successfully" }, status: :created
    else
      render json: { errors: store.errors.full_messages }, status: :bad_request
    end
  end
end
