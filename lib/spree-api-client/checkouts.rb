module Spree
  module API
    class Client
      module Checkouts
        def checkout_next(order_number)
          put("checkouts/#{order_number}/next")
        end

        def checkout(order_number, options={})
          put("checkouts/#{order_number}", options)
        end
      end
    end
  end
end
