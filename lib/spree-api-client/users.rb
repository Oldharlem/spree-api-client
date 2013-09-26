module Spree
  module API
    class Client
      module Users
        def users(options={})
          get('users', options)['users']
        end
        
        def user(id, options={})
          get("users/#{id}", options)
        end
        
        def create_user(options={})
          post("users", options)
        end
        
        def update_user(id, options={})
          put("users/#{id}", options)
        end
        
        def delete_user(id, options={})
          delete("users/#{id}", options)
        end
      end
    end
  end
end
