class CutTypesController < ApplicationController
  before_action :set_cut_type, only: %i[ show edit update destroy ]

  # GET /cut_types or /cut_types.json
  def index
    @cut_types = CutType.all
  end

  # GET /cut_types/1 or /cut_types/1.json
  def show
  end

  # GET /cut_types/new
  def new
    @cut_type = CutType.new
  end

  # GET /cut_types/1/edit
  def edit
  end

  # POST /cut_types or /cut_types.json
  def create
    @cut_type = CutType.new(cut_type_params)

    respond_to do |format|
      if @cut_type.save
        format.html { redirect_to cut_type_url, notice: "Cut type was successfully created." }
        format.json { render :show, status: :created, location: @cut_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cut_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cut_types/1 or /cut_types/1.json
  def update
    respond_to do |format|
      if @cut_type.update(cut_type_params)
        format.html { redirect_to cut_type_url, notice: "Cut type was successfully updated." }
        format.json { render :show, status: :ok, location: @cut_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cut_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cut_types/1 or /cut_types/1.json
  def destroy
    @cut_type.destroy

    respond_to do |format|
      format.html { redirect_to cut_types_url, notice: "Cut type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cut_type
      @cut_type = CutType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cut_type_params
      params.require(:cut_type).permit(:name)
    end
end
