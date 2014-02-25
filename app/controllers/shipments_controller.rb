class ShipmentsController < ApplicationController
  before_action :set_shipment, only: [:show, :edit, :update, :destroy]

  # GET /shipments
  # GET /shipments.json
  def index
    @shipments = Shipment.all
  end

  # GET /shipments/1
  # GET /shipments/1.json
  def show
    @outboxes = @shipment.outboxes
  end

  # GET /shipments/new
  def new
    @shipment = Shipment.new
    @shipment.account ||= Account.find(1)
  end

  # GET /shipments/1/edit
  def edit
  end

  # POST /shipments
  # POST /shipments.json
  def create
    stati = [Array.new(10, :INVIATO), Array.new(1, :PRONTO_PER_INVIO), Array.new(20, :CONSEGNATO)].flatten

    @shipment = Shipment.new(shipment_params)

    @shipment.user = current_user

    ds = @shipment.source.datasource
    ds.data.each do |row|
      o = @shipment.outboxes.build(destinatario:row.field('DESTINATARIO'), oggetto:@shipment.description, messaggio:'Testo del messaggio', stato: stati.sample, data_stato:Time.now)
      o.allegato = o.saveStream(File.open(@shipment.getUrl(@shipment.template)), {name: @shipment.template.name, content_type: @shipment.template.content_type})
      if o.stato.in? ['INVIATO', 'CONSEGNATO']
        o.data_invio = Time.now.strftime '%d/%m/%Y %H:%M'
      end
    end

    respond_to do |format|
      if @shipment.save
        format.html { redirect_to shipments_path, notice: 'Shipment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shipment }
      else
        format.html { render action: 'new' }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipments/1
  # PATCH/PUT /shipments/1.json
  def update
    respond_to do |format|
      if @shipment.update(shipment_params)
        format.html { redirect_to @shipment, notice: 'Shipment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipments/1
  # DELETE /shipments/1.json
  def destroy
    @shipment.destroy
    respond_to do |format|
      format.html { redirect_to shipments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment
      @shipment = Shipment.includes(:outboxes).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shipment_params
      params.require(:shipment).permit(:description, :user, :templateStream, :sourceStream, :outbox_count, :account,:account_id)
    end
end
