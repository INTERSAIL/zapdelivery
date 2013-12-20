module ApplicationHelper
  def shallow_args(parent, child)
    child.try(:new_record?) ? [parent, child] : child
  end


  def fileAttachmentLinkView (obj, key)

    emptyHtml = '-'
    el_xid = nil

    return emptyHtml unless  key.is_a? Symbol

    el_xid = obj.send("#{key}_xid")

    return emptyHtml if  el_xid.nil?

    el =    obj.send("#{key}")

    link_to(attachment_view_path(el), remote: true, class: 'present btn btn-small') do
      content_tag(:i, '', class: 'icon-eye-open icon-white') + " " + el_xid
    end

  end


  #gestise l'html dei campi definiti come attachment
  def fileAttachmentLinkDownload (obj, key)

    emptyHtml = '-'
    el_xid = nil

    return emptyHtml unless  key.is_a? Symbol

    el_xid = obj.send("#{key}_xid")

    return emptyHtml if  el_xid.nil?

    el =    obj.send("#{key}")

    link_to(attachment_download_path(el), class: 'present btn btn-small', target: '_blank') do
      content_tag(:i, '', class: 'icon-download-alt icon-white') + " " + el_xid
    end
  end




end
