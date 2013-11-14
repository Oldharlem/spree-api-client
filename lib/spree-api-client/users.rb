module Spree
  module API
    class Client
      module Users
        def users(options={})
          get('users', options)['users']
        end

        def user(user_id, options={})
          get("users/#{user_id}", options)
        end

        def create_user(options={})
          post("users", options)
        end

        def delete_user(id, options={})
          delete("users/#{id}", options)
        end

        def update_users(user_id, options={})
          put("users/#{user_id}", options)
        end

        def create_anonymous_user(options={})
          post("anonymous_users", options)
        end
      end
    end
  end
end
