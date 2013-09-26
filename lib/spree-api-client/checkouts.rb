module Spree
  module API
    class Client
      module Checkouts
        def checkouts(options={})
          get('checkouts', options)['checkouts']
        end
        
        def checkout(order_number, options={})
          get("checkouts/#{order_number}", options)
        end
        
        def create_checkout(options={})
          post("checkouts", options)
        end
        
        def update_checkout(order_number, options={})
          put("checkouts/#{order_number}", options)
        end

        def next(order_number)
          put("checkouts/#{order_number}/next")
        end
      end
    end
  end
end
