module Spree
  module API
    class Client
      module Orders
        def orders(options={})
          Hashie::Mash.new self.class.get('orders', options)
        end
        
        def order(order_number, options={})
          Hashie::Mash.new self.class.get("orders/#{order_number}", options)
        end

        def order_completed?(order_number, options={})
          Hashie::Mash.new self.class.get("orders/#{order_number}/completed", options)
        end
        
        def create_order(options={})
          Hashie::Mash.new self.class.post("orders", options)
        end

        def update_order(order_number, options={})
          Hashie::Mash.new self.class.put("orders/#{order_number}", options)
        end

        def prepare_order_for_checkout(order_number, options={})
          Hashie::Mash.new self.class.post("orders/#{order_number}/prepare_order", options)
        end

        def set_order_owner(order_number, options={})
          Hashie::Mash.new self.class.put("orders/#{order_number}/owner", options)
        end

        def prepare_order_for_checkout(order_number, options={})
          Hashie::Mash.new self.class.post("orders/#{order_number}/prepare_order", options)
        end
        
        def update_order_address(order_number, options={})
          Hashie::Mash.new self.class.put("orders/#{order_number}/address", options)
        end
        
        def set_order_shipping_method(order_number, shipping_method_id, options={})
          order_options = (options[:order] || {}).merge(:shipping_method_id => shipping_method_id)
          Hashie::Mash.new self.class.put("orders/#{order_number}", options.merge(order: order_options))
        end
        
        def empty_order(order_number, options={})
          Hashie::Mash.new self.class.put("orders/#{order_number}/empty", options)
        end
      end
    end
  end
end
