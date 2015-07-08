module Spree
  module API
    class Client
      module StockLocations
        def stock_locations(options={})
          get('stock_locations', options)['stock_locations']
        end

        def stock_location(stock_location, options={})
          get("stock_locations/#{stock_location}", options)
        end

        def new_stock_location(options={})
          get("stock_locations/#{permalink_or_id}/new", options)
        end

        def create_stock_location(options={})
          post("stock_locations", options)
        end

        def update_stock_location(stock_location, options={})
          put("stock_locations/#{stock_location}", options)
        end

        def delete_stock_location(stock_location, options={})
          delete("stock_locations/#{stock_location}", options)
        end
      end
    end
  end
end
