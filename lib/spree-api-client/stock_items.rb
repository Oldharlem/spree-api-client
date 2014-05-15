module Spree
  module API
    class Client
      module StockItems
        def stock_items(location=1, options={})
          Hashie::Mash.new self.class.get("stock_locations/#{location}/stock_items/", options)
        end

        def stock_item(stock_item, location=1, options={})
          Hashie::Mash.new self.class.get("stock_locations/#{location}/stock_items/#{stock_item}", options)
        end

        def new_stock_item(options={})
          Hashie::Mash.new self.class.get("stock_items/#{permalink_or_id}/new", options)
        end

        def create_stock_item(location, options={})
          Hashie::Mash.new self.class.post("stock_locations/#{location}/stock_items", options)
        end

        def update_stock_item(stock_item, location=1, options={})
          Hashie::Mash.new self.class.put("stock_locations/#{location}/stock_items/#{stock_item}", options)
        end

        def delete_stock_item(stock_item, location=1, options={})
          Hashie::Mash.new self.class.delete("stock_locations/#{location}/stock_items/#{stock_item}", options)
        end
      end
    end
  end
end
