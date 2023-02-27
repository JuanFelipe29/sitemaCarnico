class CutNamesController < ApplicationController
  before_action :set_cut_name, only: %i[ show edit update destroy ]

  # GET /cut_names or /cut_names.json
  def index
    @cut_names = CutName.all
  end

  # GET /cut_names/1 or /cut_names/1.json
  def show
  end

  # GET /cut_names/new
  def new
    @cut_name = CutName.new
  end

  # GET /cut_names/1/edit
  def edit
  end

  # POST /cut_names or /cut_names.json
  def create
    @cut_name = CutName.new(cut_name_params)

    respond_to do |format|
      if @cut_name.save
        format.html { redirect_to cut_names_url, notice: "Cut name was successfully created." }
        format.json { render :show, status: :created, location: @cut_name }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cut_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cut_names/1 or /cut_names/1.json
  def update
    respond_to do |format|
      if @cut_name.update(cut_name_params)
        format.html { redirect_to cut_names_url, notice: "Cut name was successfully updated." }
        format.json { render :show, status: :ok, location: @cut_name }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cut_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cut_names/1 or /cut_names/1.json
  def destroy
    @cut_name.destroy

    respond_to do |format|
      format.html { redirect_to cut_names_url, notice: "Cut name was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cut_name
      @cut_name = CutName.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cut_name_params
      params.require(:cut_name).permit(:name, :piece_id)
    end
end
