module Spree
  module API
    class Client
      module Shipments
        def shipment_ready(shipment_id, options={})
          put("shipments/#{shipment_id}/ready", options)
        end

        def ship_shipment(shipment_id, options={})
          put("shipments/#{shipment_id}/ship", options)
        end
      end
    end
  end
end
