class Api::SessionsController < ApplicationController
  def create
    store = Store.find_by(email: params[:email])
    if store && store.authenticate(params[:password])
      jwt = JWT.encode(
        {
          store_id: store.id, # the data to encode
          exp: 24.hours.from_now.to_i, # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: store.email, store_id: store.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
end
