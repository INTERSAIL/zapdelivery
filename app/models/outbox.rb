class Outbox < ActiveRecord::Base
  extend Enumerize

  enumerize :stato, in: {UNDEFINED:0, INVIATO:1, ERRORE:2, CONSEGNATO:3}
end
