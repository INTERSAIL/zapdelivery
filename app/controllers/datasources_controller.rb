class DatasourcesController < ApplicationController

  def show
    @attachment = Attachment.find(params[:id])
  end
end