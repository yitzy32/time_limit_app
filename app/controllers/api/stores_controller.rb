class Api::StoresController < ApplicationController
  def create
    @store = Store.new(
      name: params[:name],
      password: params[:password],
      email: params[:email],
      address: params[:address],
    )
    @store.save
    render "show.json.jb"
  end
end
