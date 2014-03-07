require 'intersail/attachment_util'

class Template < ActiveRecord::Base
  include Intersail::Util::AttachmentUtil

  has_many :shipments
  has_many :outboxes, through: :shipments

  attr_attachment :template_doc
end
