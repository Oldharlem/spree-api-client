module Spree
  module API
    class Client
      module Promotions
        def promotions(options={})
          get('promotions', options)
        end

        def promotion(permalink_or_id, options={})
          get("promotions/#{permalink_or_id}", options)
        end
      end
    end
  end
end