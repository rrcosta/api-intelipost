class SalesPlatformsController < ApplicationController
  before_action :set_sales_platform, only: [:show, :update, :destroy]

  def index
    @sales_platforms = SalesPlatform.all
  end

  def show
  end

  def new
    @sales_platform = SalesPlatform.new
  end

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

  def destroy
    @sales_platform.destroy
    respond_to do |format|
      format.html { redirect_to sales_platforms_url, notice: 'Sales platform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_sales_platform
      @sales_platform = SalesPlatform.find(params[:id])
    end

    def sales_platform_params
      params.require(:sales_platform).permit(:orderId, :status, :date, :status_delivered)
    end
end
