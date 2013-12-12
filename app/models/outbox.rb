require 'intersail/attachment_util'

class Outbox < ActiveRecord::Base
  include Intersail::Util::AttachmentUtil

  extend Enumerize
  enumerize :stato, in: {UNDEFINED:0, INVIATO:1, ERRORE:2, CONSEGNATO:3}
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
