module Intersail
  module Util
    module  AttachmentUtil

      def saveStream(stream)
          xid = Time.now.to_formatted_s(:nsec)

          File.atomic_write("app/assets/pdf/#{xid}") do |f|
            f.write(stream.tempfile.read)
          end

          Attachment.new(xid: xid, name: stream.original_filename, content_type: stream.content_type )
      end
     end
  end
end

class Class
  #crea il getter e setter degli argomenti passati
  def attr_attachment(*args)

    #iteriamo sulle chiavi
    args.each do |arg|

      #relation
      self.class_eval("belongs_to :#{arg}, class_name: 'Attachment'")
      #setter
      self.class_eval("def #{arg}Stream=val; self.#{arg}=saveStream(val); end")
    end

    #save
    self.class_eval("def save; super && #{args.map{|v| v.to_s+'.save'}.join(' && ')}; end")
  end



end


