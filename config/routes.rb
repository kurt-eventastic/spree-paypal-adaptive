Spree::Core::Engine.routes.draw do
  get '/paypal-adaptive', :to => "paypal#express", :as => :paypal_express
end
