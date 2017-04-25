# app/controllers/charges_controller.rb

class ChargesController < ApplicationController
  before_action :amount_to_be_charged
  before_action :set_description
  before_action :set_email

  def new
  end

  def create
    customer = StripeTool.create_customer(email: @email,
                                          stripe_token: params[:stripeToken])

    charge = StripeTool.create_charge(customer_id: customer.id,
                                      amount: @amount,
                                      description: @description)

    redirect_to thanks_path

    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private

    def amount_to_be_charged
      @amount = current_order.subtotal.to_i*100
    end

  # as a private method
  def set_description
    @description = "Your Purchase from Coret"
  end

  def set_email
    @email = current_user.email
  end

  def thanks
  end
end
