require 'paypal-sdk-adaptivepayments'

module Spree
  class Gateway::PayPalAdaptive < Gateway
    preference :mode, :string, default: 'sandbox'
    preference :app_id, :string
    preference :username, :string
    preference :password, :string
    preference :signature, :string

    def supports?(source)
      true
    end

    def provider_class
      ::PayPal::SDK::AdaptivePayments::API
    end

    def provider
      ::PayPal::SDK.configure(
        mode: preferred_mode.present? ? preferred_mode : 'live',
        username: preferred_username,
        password: preferred_password,
        signature: preferred_signature)
      provider_class.new
    end

    def auto_capture?
      true
    end

    def method_type
      'paypal'
    end

    def purchase(amount, express_checkout, gateway_options={})
      # TODO: Write beautiful code.
      Class.new do
          def success?; true; end
          def authorization; nil; end
        end.new
    end

    def refund(payment, amount)
      # TODO: Write beautiful code.
    end
  end
end