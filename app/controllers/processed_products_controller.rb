class ProcessedProductsController < ApplicationController
  before_action :set_processed_product, only: %i[ show edit update destroy ]

  # GET /processed_products or /processed_products.json
  def index
    @processed_products = ProcessedProduct.all
  end

  # GET /processed_products/1 or /processed_products/1.json
  def show
  end

  # GET /processed_products/new
  def new
    @processed_product = ProcessedProduct.new
  end

  # GET /processed_products/1/edit
  def edit
  end

  # POST /processed_products or /processed_products.json
  def create
    @processed_product = ProcessedProduct.new(processed_product_params)

    respond_to do |format|
      if @processed_product.save
        format.html { redirect_to processed_product_url(@processed_product), notice: "Processed product was successfully created." }
        format.json { render :show, status: :created, location: @processed_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @processed_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /processed_products/1 or /processed_products/1.json
  def update
    respond_to do |format|
      if @processed_product.update(processed_product_params)
        format.html { redirect_to processed_product_url(@processed_product), notice: "Processed product was successfully updated." }
        format.json { render :show, status: :ok, location: @processed_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @processed_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /processed_products/1 or /processed_products/1.json
  def destroy
    @processed_product.destroy

    respond_to do |format|
      format.html { redirect_to processed_products_url, notice: "Processed product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processed_product
      @processed_product = ProcessedProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def processed_product_params
      params.require(:processed_product).permit(:name_of_products_id, :product_type_id)
    end
end
