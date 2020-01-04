class KakusController < ApplicationController
  before_action :set_kaku, only: [:show, :edit, :update, :destroy]

  # GET /kakus
  # GET /kakus.json
  def index
    @kakus = Kaku.all
  end

  # GET /kakus/1
  # GET /kakus/1.json
  def show
  end

  # GET /kakus/new
  def new
    @kaku = Kaku.new
  end

  # GET /kakus/1/edit
  def edit
  end

  # POST /kakus
  # POST /kakus.json
  def create
    @kaku = Kaku.new(kaku_params)

    respond_to do |format|
      if @kaku.save
        format.html { redirect_to @kaku, notice: 'Kaku was successfully created.' }
        format.json { render :show, status: :created, location: @kaku }
      else
        format.html { render :new }
        format.json { render json: @kaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kakus/1
  # PATCH/PUT /kakus/1.json
  def update
    respond_to do |format|
      if @kaku.update(kaku_params)
        format.html { redirect_to @kaku, notice: 'Kaku was successfully updated.' }
        format.json { render :show, status: :ok, location: @kaku }
      else
        format.html { render :edit }
        format.json { render json: @kaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kakus/1
  # DELETE /kakus/1.json
  def destroy
    @kaku.destroy
    respond_to do |format|
      format.html { redirect_to kakus_url, notice: 'Kaku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kaku
      @kaku = Kaku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kaku_params
      params.require(:kaku).permit(:body, :url, :sonota, :users_id)
    end
end
