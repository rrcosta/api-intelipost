class WebhooksController < ApplicationController
  before_action :set_webhook, only: [:show, :edit, :update, :destroy]

  # GET /webhooks
  # GET /webhooks.json
  def index
    @webhooks = Webhook.all
  end

  # GET /webhooks/1
  # GET /webhooks/1.json
  def show
  end

  # GET /webhooks/new
  def new
    @webhook = Webhook.new
  end

  # GET /webhooks/1/edit
  def edit
  end

  # POST /webhooks
  # POST /webhooks.json
  def create
    @webhook = Webhook.new(webhook_params)

    respond_to do |format|
      if @webhook.save
        format.html { redirect_to @webhook, notice: 'Webhook criado com sucesso.' }
        format.json { render :show, status: :created, location: @webhook }
      else
        format.html { render :new }
        format.json { render json: @webhook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webhooks/1
  # PATCH/PUT /webhooks/1.json
  def update
    respond_to do |format|
      if @webhook.update(webhook_params)
        format.html { redirect_to @webhook, notice: 'Webhook atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @webhook }
      else
        format.html { render :edit, notice: 'Webhook não pode ser atualizado. Favor Verificar os campos' }
        format.json { render json: @webhook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webhooks/1
  # DELETE /webhooks/1.json
  def destroy
    @webhook.destroy
    respond_to do |format|
      format.html { redirect_to webhooks_url, notice: 'Webhook removido com sucesso' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webhook
      @webhook = Webhook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def webhook_params
      params.require(:webhook).permit(:name, :url, :status)
    end
end
