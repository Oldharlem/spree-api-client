module Spree
  module API
    class Client
      module StockItems
        def stock_items(stock_location_id, options={})
          get("stock_locations/#{stock_location_id}/stock_items", options)['stock_items']
        end

        def stock_item(stock_location_id, stock_item_id, options={})
          get("stock_locations/#{stock_location_id}/stock_items/#{stock_item_id}", options)
        end

        def new_stock_item(stock_location_id, options={})
          get("stock_locations/#{stock_location_id}/stock_items/new", options)
        end

        def create_stock_item(stock_location_id, options={})
          post("stock_locations/#{stock_location_id}/stock_items/", options)
        end

        def update_stock_item(stock_location_id, stock_item_id, options={})
          put("stock_locations/#{stock_location_id}/stock_items/#{stock_item_id}", options)
        end

        def delete_stock_item(stock_location_id, stock_item_id, options={})
          delete("stock_locations/#{stock_location_id}/stock_items/#{stock_item_id}", options)
        end
      end
    end
  end
end