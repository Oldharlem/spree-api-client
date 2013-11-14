module Spree
  module API
    class Client
      module CreditCards
        def credit_card(id, options={})
          get("credit_cards/#{id}", options)
        end
      end
    end
  end
end
