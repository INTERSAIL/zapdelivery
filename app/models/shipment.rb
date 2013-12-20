require 'intersail/attachment_util'

class Shipment < ActiveRecord::Base
  include Intersail::Util::AttachmentUtil

  has_many :outboxes
  belongs_to :user
  belongs_to :account

  attr_attachment(:template , :source)


=begin
  def template
     getUrl template_xid
  end

  def template=templateStream
    write_attribute(:template_xid , saveStream(templateStream))
  end

  def source
    getUrl source_xid
  end

  def source=val
    write_attribute(:source_xid , saveStream(val))
  end
=end






  def outbox_count
    self.outboxes.count
  end

end
