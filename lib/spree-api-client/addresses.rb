module Spree
  module API
    class Client
      module Addresses
        def address(order_number, id, options={})
          get("orders/#{order_number}/addresses/#{id}", options)
        end

        # #get addresses by user
        # def addresses(order_number, options={})
        #   get("orders/#{order_number}/addresses",options)["addresses"]
        # end

        def update_address(order_number, id, options={})
          put("orders/#{order_number}/addresses/#{id}", options)
        end
      end
    end
  end
end
