module Spree
  module API
    class Client
      module StockItems
        def stock_items(location_id,options={})
          get("stock_locations/#{location_id}", options)['stock_items']
        end
        
        def stock_item(location_id, stock_item_id, options={})
          get("stock_locations/#{location_id}/stock_items/#{stock_item_id}", options)
        end
        
        def create_stock_item(location_id, options={})
          post("stock_locations//#{location_id}", options)['stock_items']
        end
        
        def update_stock_item(location_id, stock_item_id, options={})
          put("stock_locations/#{location_id}/stock_items/#{stock_item_id}", options)
        end
        
        def delete_stock_item(location_id, stock_item_id, options={})
          delete("stock_locations/#{location_id}/stock_items/#{stock_item_id}", options)
        end
      end
    end
  end
end