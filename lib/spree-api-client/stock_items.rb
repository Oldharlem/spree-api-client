module Spree
  module API
    class Client
      module StockItems
        def stock_items(location=1, options={})
          get("stock_locations/#{location}/stock_items/", options)
        end

        def stock_item(stock_item, location=1, options={})
          get("stock_locations/#{location}/stock_items/#{stock_item}", options)
        end

        def new_stock_item(options={})
          get("stock_items/#{permalink_or_id}/new", options)
        end

        def create_stock_item(location, options={})
          post("stock_locations/#{location}/stock_items", options)
        end

        def update_stock_item(stock_item, location=1, options={})
          put("stock_locations/#{location}/stock_items/#{stock_item}", options)
        end

        def delete_stock_item(stock_item, location=1, options={})
          delete("stock_locations/#{location}/stock_items/#{stock_item}", options)
        end
      end
    end
  end
end