class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, if: -> { request.format.html? }

  def current_store
    auth_headers = request.headers["Authorization"]
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: "HS256" }
        )
        Store.find_by(id: decoded_token[0]["store_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  helper_method :current_store

  def authenticate_store
    unless current_store
      render json: {}, status: :unauthorized
    end
  end
end
