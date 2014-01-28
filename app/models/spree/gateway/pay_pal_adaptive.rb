module Spree
  class Gateway::PayPalExpress < Gateway
    def supports?(source)
      true
    end

    def auto_capture?
      true
    end

    def method_type
      'paypal'
    end
  end
end