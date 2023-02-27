class CutsController < ApplicationController
  before_action :set_cut, only: %i[ show edit update destroy ]

  # GET /cuts or /cuts.json
  def index
    @cuts = Cut.all
  end

  # GET /cuts/1 or /cuts/1.json
  def show
  end

  # GET /cuts/new
  def new
    @cut = Cut.new
  end

  # GET /cuts/1/edit
  def edit
  end

  # POST /cuts or /cuts.json
  def create
    @cut = Cut.new(cut_params)

    respond_to do |format|
      if @cut.save
        format.html { redirect_to cuts_url, notice: "Cut was successfully created." }
        format.json { render :show, status: :created, location: @cut }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuts/1 or /cuts/1.json
  def update
    respond_to do |format|
      if @cut.update(cut_params)
        format.html { redirect_to cuts_url, notice: "Cut was successfully updated." }
        format.json { render :show, status: :ok, location: @cut }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuts/1 or /cuts/1.json
  def destroy
    @cut.destroy

    respond_to do |format|
      format.html { redirect_to cuts_url, notice: "Cut was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cut
      @cut = Cut.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cut_params
      params.require(:cut).permit(:piece_id, :cut_name_id, :start_date_maturation, :end_date_maturation, :maturing, :available, :cut_type_id)
    end
end
