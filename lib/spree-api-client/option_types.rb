module Spree
  module API
    class Client
      module OptionTypes
        def option_types(options={})
          get('option_types', options)['option_types']
        end
        
        def option_type(permalink_or_id, options={})
          get("option_types/#{permalink_or_id}", options)
        end
        
        def new_option_type(options={})
          get("option_types/#{permalink_or_id}/new", options)
        end
        
        def create_option_type(options={})
          post("option_types", options)
        end
        
        def update_option_type(permalink_or_id, options={})
          put("option_types/#{permalink_or_id}", options)
        end
        
        def delete_option_type(permalink_or_id, options={})
          delete("option_types/#{permalink_or_id}", options)
        end
      end
    end
  end
end
