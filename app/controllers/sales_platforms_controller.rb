class SalesPlatformsController < ApplicationController
  before_action :set_sales_platform, only: [:show, :edit, :update, :destroy]

  # GET /sales_platforms
  # GET /sales_platforms.json
  def index
    @sales_platforms = SalesPlatform.all
  end

  # GET /sales_platforms/1
  # GET /sales_platforms/1.json
  def show
  end

  # GET /sales_platforms/new
  def new
    @sales_platform = SalesPlatform.new
  end

  # GET /sales_platforms/1/edit
  def edit
  end

  # POST /sales_platforms
  # POST /sales_platforms.json
  def create
    @sales_platform = SalesPlatform.new(sales_platform_params)

    respond_to do |format|
      if @sales_platform.save
        format.html { redirect_to @sales_platform, notice: 'Sales platform was successfully created.' }
        format.json { render :show, status: :created, location: @sales_platform }
      else
        format.html { render :new }
        format.json { render json: @sales_platform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_platforms/1
  # PATCH/PUT /sales_platforms/1.json
  def update
    respond_to do |format|
      if @sales_platform.update(sales_platform_params)
        format.html { redirect_to @sales_platform, notice: 'Sales platform was successfully updated.' }
        format.json { render :show, status: :ok, location: @sales_platform }
      else
        format.html { render :edit }
        format.json { render json: @sales_platform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_platforms/1
  # DELETE /sales_platforms/1.json
  def destroy
    @sales_platform.destroy
    respond_to do |format|
      format.html { redirect_to sales_platforms_url, notice: 'Sales platform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_platform
      @sales_platform = SalesPlatform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sales_platform_params
      params.require(:sales_platform).permit(:orderId, :status, :date, :status_delivered)
    end
end
