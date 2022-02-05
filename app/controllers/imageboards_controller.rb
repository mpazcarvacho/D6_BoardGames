class ImageboardsController < ApplicationController
  before_action :set_imageboard, only: %i[ show edit update destroy ]

  # GET /imageboards or /imageboards.json
  def index
    @imageboards = Imageboard.all
  end

  # GET /imageboards/1 or /imageboards/1.json
  def show
  end

  # GET /imageboards/new
  def new
    @imageboard = Imageboard.new
  end

  # GET /imageboards/1/edit
  def edit
  end

  # POST /imageboards or /imageboards.json
  def create
    @imageboard = Imageboard.new(imageboard_params)

    respond_to do |format|
      if @imageboard.save
        format.html { redirect_to imageboard_url(@imageboard), notice: "Imageboard was successfully created." }
        format.json { render :show, status: :created, location: @imageboard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @imageboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imageboards/1 or /imageboards/1.json
  def update
    respond_to do |format|
      if @imageboard.update(imageboard_params)
        format.html { redirect_to imageboard_url(@imageboard), notice: "Imageboard was successfully updated." }
        format.json { render :show, status: :ok, location: @imageboard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @imageboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imageboards/1 or /imageboards/1.json
  def destroy
    @imageboard.destroy

    respond_to do |format|
      format.html { redirect_to imageboards_url, notice: "Imageboard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imageboard
      @imageboard = Imageboard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def imageboard_params
      params.require(:imageboard).permit(:name, :img_board)
    end
end
