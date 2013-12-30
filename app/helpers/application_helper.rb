module ApplicationHelper
  def shallow_args(parent, child)
    child.try(:new_record?) ? [parent, child] : child
  end


  def fileAttachmentLinkView (attachment)

    emptyHtml = '-'

    return emptyHtml if attachment.nil? || attachment.xid.nil?

    link_to(attachment_view_path(attachment), remote: true, class: 'present btn btn-small') do
      content_tag(:i, '', class: 'icon-eye-open icon-white') + " " + attachment.name
    end

  end


  #gestise l'html dei campi definiti come attachment
  def fileAttachmentLinkDownload (attachment)

    emptyHtml = '-'

    return emptyHtml if attachment.nil? || attachment.xid.nil?

    link_to(attachment_download_path(attachment), class: 'present btn btn-small', target: '_blank') do
      content_tag(:i, '', class: 'icon-download-alt icon-white') + " " + attachment.name
    end
  end




end
