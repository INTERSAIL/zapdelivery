module ShipmentsHelper

  def fileAttachmentLink (obj, key)

    emptyHtml = '-'
    el_xid = nil

    return emptyHtml unless  key.is_a? Symbol

    el_xid = obj.send("#{key}_xid")

    return emptyHtml if  el_xid.nil?

    el =    obj.send("#{key}")

    link_to(el, class: 'present btn btn-small') do
      content_tag(:i, '', class: 'icon-download-alt icon-white') + " " + el_xid
    end

  end

end
