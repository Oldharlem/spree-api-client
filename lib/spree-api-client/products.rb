module Spree
  module API
    class Client
      module Products
        def products(options={})
          Hashie::Mash.new self.class.get('products', options)['products']
        end
        
        def product(permalink_or_id, options={})
          Hashie::Mash.new self.class.get("products/#{permalink_or_id}", options)
        end
        
        def new_product(options={})
          Hashie::Mash.new self.class.get("products/#{permalink_or_id}/new", options)
        end
        
        def create_product(options={})
          Hashie::Mash.new self.class.post("products", options)
        end
        
        def update_product(permalink_or_id, options={})
          Hashie::Mash.new self.class.put("products/#{permalink_or_id}", options)
        end
        
        def delete_product(permalink_or_id, options={})
          Hashie::Mash.new self.class.delete("products/#{permalink_or_id}", options)
        end
      end
    end
  end
end