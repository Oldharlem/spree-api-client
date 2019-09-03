module Spree
  module API
    class Client
      module OptionValues
        def option_values(options={})
          get('option_values', options)['option_values']
        end
        
        def option_value(permalink_or_id, options={})
          get("option_values/#{permalink_or_id}", options)
        end
        
        def new_option_value(options={})
          get("option_values/#{permalink_or_id}/new", options)
        end
        
        def create_option_value(options={})
          post("option_values", options)
        end
        
        def update_option_value(permalink_or_id, options={})
          put("option_values/#{permalink_or_id}", options)
        end
        
        def delete_option_value(permalink_or_id, options={})
          delete("option_values/#{permalink_or_id}", options)
        end
      end
    end
  end
end
