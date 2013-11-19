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
      end
    end
  end
end
