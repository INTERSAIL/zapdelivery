class Outbox < ActiveRecord::Base
  extend Enumerize
  enumerize :stato, in: {UNDEFINED:0, INVIATO:1, ERRORE:2, CONSEGNATO:3}
  belongs_to :shipment

  #default_scope { ente_id = ApplicationController.current_customer.ente_id }

end
