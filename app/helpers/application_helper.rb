module ApplicationHelper
  def shallow_args(parent, child)
    child.try(:new_record?) ? [parent, child] : child
  end


  def fileAttachmentLinkView (attachment)

    emptyHtml = '-'

    return emptyHtml if attachment.nil? || attachment.xid.nil?

    link_to(attachment_view_path(attachment), remote: true, class: 'present btn btn-small', title: attachment.name) do
      content_tag(:i, '', class: 'icon-eye-open icon-white')
    end

  end


  #gestise l'html dei campi definiti come attachment
  def fileAttachmentLinkDownload (attachment)

    emptyHtml = '-'

    return emptyHtml if attachment.nil? || attachment.xid.nil?

    link_to(attachment_download_path(attachment), class: 'present btn btn-small', target: '_blank', title: attachment.name) do
      content_tag(:i, '', class: 'icon-download-alt icon-white')
    end
  end

  def progressBar(shipment)

      tot = shipment.outboxes.count

    html = ''
      Outbox.stato.values.each do |status|
        next if status == 'UNDEFINED'
        v = shipment.outboxes.having_status(status.to_s).count
        k = status
        w = tot==0 ? 0 : (10000 * v) / (100 * tot)
        html = html + content_tag(:div, class: "progress-bar #{k}", style: "width: #{w}%", title:"#{k.humanize}:#{v} su #{tot}" ) do
          content_tag(:span, "#{v}".html_safe, class:'sr-only')
        end
      end

      html

      content_tag(:div,html.html_safe,class:'progress')
  end


  def div(arg = nil)
    if block_given?
      content_tag(:div) do
        yield
      end
    else
      content_tag(:div, arg.to_s)
    end
  end
  alias :d :div


  def table_fixed
    content_tag(:div, (content_tag(:div, class: 'table-fixed-header-inner') do
      yield
    end
    ), class: 'table-fixed-header-container')
  end
end
