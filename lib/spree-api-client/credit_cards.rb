module Spree
  module API
    class Client
      module CreditCards
        def credit_card(id, options={})
          get("credit_cards/#{id}", options)
        end

        def credit_cards(options={})
          get('credit_cards', options)["credit_cards"]
        end
      end
    end
  end
end
