require 'intersail/attachment_util'

class Outbox < ActiveRecord::Base
  include Intersail::Util::AttachmentUtil

  extend Enumerize
  enumerize :stato, in: {UNDEFINED:0, PRONTO_PER_INVIO:10, INVIATO:20, CONSEGNATO:30, ERRORE:90}, scope: :having_status

  belongs_to :shipment, counter_cache: true

  attr_attachment(:allegato)

  scope :with_template_id, ->(template_id) { joins(:shipment).where('shipments.template_id = ?', template_id) }

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
