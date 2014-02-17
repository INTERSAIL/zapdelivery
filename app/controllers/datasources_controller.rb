class DatasourcesController < ApplicationController

  def show
    attachment = Attachment.find(params[:id])
    @datasource = attachment.datasource

    render_modal("Sorgente dati - #{attachment.name}", 'datasources/datasource')
  end
end
