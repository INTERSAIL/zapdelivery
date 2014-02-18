require 'intersail/attachment_util'

class Outbox < ActiveRecord::Base
  include Intersail::Util::AttachmentUtil

  extend Enumerize
  enumerize :stato, in: {UNDEFINED:0, PRONTO_PER_INVIO:10, INVIATO:20, ERRORE:90, CONSEGNATO:30}, scope: :having_status
  belongs_to :shipment
  attr_attachment(:allegato)

  #default_scope { ente_id = ApplicationController.current_customer.ente_id }
=begin
  def allegato
    getUrl allegato_xid
  end

  def allegato=allegatoStream
    write_attribute(:allegato_xid , saveStream(allegatoStream))
  end
=end



end
