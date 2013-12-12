class OutboxesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  before_action :set_outbox, only: [:show, :edit, :update, :destroy]

  # GET /outboxes
  # GET /outboxes.json
  def index
    @outboxes = Outbox.all
  end

  # GET /outboxes/1
  # GET /outboxes/1.json
  def show


    respond_to do |format|
      format.html # show.html.erb
      format.js { render_modal(@outbox.oggetto, "outboxes/outbox") }
      format.json { render json: @outbox }
    end
  end

  # GET /outboxes/new
  def new
    @outbox = Outbox.new
  end

  # GET /outboxes/1/edit
  def edit
  end

  # POST /outboxes
  # POST /outboxes.json
  def create
    @outbox = Outbox.new(outbox_params)

    respond_to do |format|
      if @outbox.save
        format.html { redirect_to @outbox, notice: 'Outbox was successfully created.' }
        format.json { render action: 'show', status: :created, location: @outbox }
      else
        format.html { render action: 'new' }
        format.json { render json: @outbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outboxes/1
  # PATCH/PUT /outboxes/1.json
  def update
    respond_to do |format|
      if @outbox.update(outbox_params)
        format.html { redirect_to @outbox, notice: 'Outbox was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @outbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outboxes/1
  # DELETE /outboxes/1.json
  def destroy
    @outbox.destroy
    respond_to do |format|
      format.html { redirect_to outboxes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outbox
      @outbox = Outbox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outbox_params
      params.require(:outbox).permit(:destinatario, :oggetto, :messaggio, :allegato, :data_invio, :stato, :data_stato, :risposta)
    end
end
