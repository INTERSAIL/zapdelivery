module Intersail
  module Util
    module  AttachmentUtil

      def saveStream(stream)
           '1234567.file'
      end

      def getUrl(xid)
          "http://docrepository/#{xid}"
      end

     end
  end
end

class Class
  #crea il getter e setter degli argomenti passati
  def attr_attachment(*args)

    #iteriamo sulle chiavi
    args.each do |arg|

      #getter
      self.class_eval("def #{arg};logger.info 'getter #{arg}' + #{arg}_xid.to_s ;getUrl #{arg}_xid ;end")
      #
      #setter
      self.class_eval("def #{arg}=(val);logger.info 'setter #{arg}' + #{arg}_xid.to_s ; write_attribute( :#{arg}_xid , saveStream(val)); end")


    end
  end

  #gestise l'html dei campi definiti come attachment
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


