Spree::Core::Engine.routes.prepend do
  namespace :admin do
    match 'orders/:order_number/superadmin' => 'superadmin#index', :as => :superadmin_order
    match 'orders/:order_number/superadmin/complete_payment' => 'superadmin#complete_payment',
        :as => :complete_payment_superadmin_order,
        :via => :post
  end
end
 
