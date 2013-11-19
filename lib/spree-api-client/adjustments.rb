module Spree
  module API
    class Client
      module Adjustments
        def adjustment(id, options={})
          get("adjustments/#{id}", options)
        end

        def adjustments((options={})
          get('adjustments', options)
        end

        def create_adjustment(options={})
          post("adjustments", options)
        end

        def update_adjustment(id, options={})
          post("adjustments", options)
        end
      end
    end
  end
end
