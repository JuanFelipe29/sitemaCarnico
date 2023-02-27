class NameOfProductsController < ApplicationController
  before_action :set_name_of_product, only: %i[ show edit update destroy ]

  # GET /name_of_products or /name_of_products.json
  def index
    @name_of_products = NameOfProduct.all
  end

  # GET /name_of_products/1 or /name_of_products/1.json
  def show
  end

  # GET /name_of_products/new
  def new
    @name_of_product = NameOfProduct.new
  end

  # GET /name_of_products/1/edit
  def edit
  end

  # POST /name_of_products or /name_of_products.json
  def create
    @name_of_product = NameOfProduct.new(name_of_product_params)

    respond_to do |format|
      if @name_of_product.save
        format.html { redirect_to name_of_product_url(@name_of_product), notice: "Name of product was successfully created." }
        format.json { render :show, status: :created, location: @name_of_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @name_of_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /name_of_products/1 or /name_of_products/1.json
  def update
    respond_to do |format|
      if @name_of_product.update(name_of_product_params)
        format.html { redirect_to name_of_product_url(@name_of_product), notice: "Name of product was successfully updated." }
        format.json { render :show, status: :ok, location: @name_of_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @name_of_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /name_of_products/1 or /name_of_products/1.json
  def destroy
    @name_of_product.destroy

    respond_to do |format|
      format.html { redirect_to name_of_products_url, notice: "Name of product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_name_of_product
      @name_of_product = NameOfProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def name_of_product_params
      params.require(:name_of_product).permit(:name)
    end
end
