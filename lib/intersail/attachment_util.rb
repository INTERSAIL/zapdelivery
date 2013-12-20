module Intersail
  module Util
    module  AttachmentUtil

      def saveStream(stream)
           'allegato'
      end

      def getUrl(xid)
          "#{xid}"
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



end


