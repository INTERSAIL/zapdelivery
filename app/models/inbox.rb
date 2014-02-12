require 'intersail/attachment_util'
class Inbox < ActiveRecord::Base

  include Intersail::Util::AttachmentUtil
  attr_attachment(:allegato)

  default_scope { order(created_at: :desc) }

end
