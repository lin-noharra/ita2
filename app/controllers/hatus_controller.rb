class HatusController < ApplicationController
  before_action :set_hatu, only: [:show, :edit, :update, :destroy]

  # GET /hatus
  # GET /hatus.json
  def index
    @hatus = Hatu.all
  end

  # GET /hatus/1
  # GET /hatus/1.json
  def show
  end

  # GET /hatus/new
  def new
    @hatu = Hatu.new
  end

  # GET /hatus/1/edit
  def edit
  end

  # POST /hatus
  # POST /hatus.json
  def create
    @hatu = Hatu.new(hatu_params)

    respond_to do |format|
      if @hatu.save
        format.html { redirect_to @hatu, notice: 'Hatu was successfully created.' }
        format.json { render :show, status: :created, location: @hatu }
      else
        format.html { render :new }
        format.json { render json: @hatu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hatus/1
  # PATCH/PUT /hatus/1.json
  def update
    respond_to do |format|
      if @hatu.update(hatu_params)
        format.html { redirect_to @hatu, notice: 'Hatu was successfully updated.' }
        format.json { render :show, status: :ok, location: @hatu }
      else
        format.html { render :edit }
        format.json { render json: @hatu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hatus/1
  # DELETE /hatus/1.json
  def destroy
    @hatu.destroy
    respond_to do |format|
      format.html { redirect_to hatus_url, notice: 'Hatu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hatu
      @hatu = Hatu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hatu_params
      params.require(:hatu).permit(:body, :url, :sonota, :user_id)
    end
end
