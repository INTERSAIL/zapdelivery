class AttachmentController < ApplicationController

  before_filter :set_attachment

  def view

    render_modal('Documento', "attachment/embedded")

  end

  def download

    send_file( 'app/assets/pdf/'+@nome_documento+'.pdf' ,type: 'application/pdf', disposition: 'attachment', filename: @nome_documento)

  end

  private

  def set_attachment

    @nome_documento = 'allegato'



    @nome_documento = params[:format] if File.exists?('app/assets/pdf/'+params[:format]+'.pdf')
  end

end