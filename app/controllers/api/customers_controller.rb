class Api::CustomersController < ApplicationController
  def create
    @customer = Customer.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
      start_time: Time.now,
      end_time: Time.now + 2.hours,
      is_present: true,
      store_id: current_store.id,
    )
    @customer.save
    render "show.json.jb"
  end
end
