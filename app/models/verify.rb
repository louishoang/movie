class Verify
  def credit_card
  Stripe.api_key = stripe_key

      # Get the credit card details submitted by the form
      token = params[:stripeToken]

      # Create a Customer
      customer = Stripe::Customer.create(
        :card => token,
        :plan => 1,
        :email => current_user.email
      )
  end
  private

  def stripe_key
    ENV['STRIPE']
  end
end
