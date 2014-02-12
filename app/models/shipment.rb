require 'intersail/attachment_util'

class Shipment < ActiveRecord::Base
  include Intersail::Util::AttachmentUtil

  has_many :outboxes
  belongs_to :user
  belongs_to :account

  attr_attachment(:template , :source)

  #belongs_to :template, class_name: "Attachment"
  #belongs_to :source, class_name: "Attachment"
  #
  #def templateStream=val
  #  self.template = saveStream(val)
  #end
  #def sourceStream=val
  #  self.source = saveStream(val)
  #end
  #def save
  #  super && self.template.save && self.source.save
  #end

  default_scope { order(created_at: :desc) }

  def outbox_count
    self.outboxes.count
  end

end
