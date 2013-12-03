require 'intersail/attachment_util'

class Shipment < ActiveRecord::Base
  has_many :outboxes
  belongs_to :user

  def template
     #Intersail::Util::AttachmentUtil.getUrl template_xid
  end

  def template=templateStream
    self.template_xid = AttachmentUtil.save(templateStream)
  end

  def source
    #AttachmentUtil.getUrl source_xid
  end

  def source=sourceStream
    self.source_xid = AttachmentUtil.save(sourceStream)
  end

  def outbox_count
    self.outboxes.count
  end

end
