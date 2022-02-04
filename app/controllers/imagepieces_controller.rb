class ImagepiecesController < ApplicationController
  before_action :set_imagepiece, only: %i[ show edit update destroy ]

  # GET /imagepieces or /imagepieces.json
  def index
    @imagepieces = Imagepiece.all
  end

  # GET /imagepieces/1 or /imagepieces/1.json
  def show
  end

  # GET /imagepieces/new
  def new
    @imagepiece = Imagepiece.new
  end

  # GET /imagepieces/1/edit
  def edit
  end

  # POST /imagepieces or /imagepieces.json
  def create
    @imagepiece = Imagepiece.new(imagepiece_params)

    respond_to do |format|
      if @imagepiece.save
        format.html { redirect_to imagepiece_url(@imagepiece), notice: "Imagepiece was successfully created." }
        format.json { render :show, status: :created, location: @imagepiece }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @imagepiece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imagepieces/1 or /imagepieces/1.json
  def update
    respond_to do |format|
      if @imagepiece.update(imagepiece_params)
        format.html { redirect_to imagepiece_url(@imagepiece), notice: "Imagepiece was successfully updated." }
        format.json { render :show, status: :ok, location: @imagepiece }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @imagepiece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagepieces/1 or /imagepieces/1.json
  def destroy
    @imagepiece.destroy

    respond_to do |format|
      format.html { redirect_to imagepieces_url, notice: "Imagepiece was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagepiece
      @imagepiece = Imagepiece.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def imagepiece_params
      params.require(:imagepiece).permit(:name)
    end
end
