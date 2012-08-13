Deface::Override.new(:virtual_path => "spree/admin/shared/_order_tabs",
                     :name => "add_superadmin_to_admin_orders_tabs",
                     :insert_bottom => "[data-hook='admin_order_tabs'], #admin_order_tabs[data-hook]",
                     :partial => "spree/admin/orders/superadmin_tab",
                     :original => '0bfa50b53b4bb09e57d2382037c58e8319162229',
                     :disabled => false)
