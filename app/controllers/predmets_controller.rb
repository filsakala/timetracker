class PredmetsController < ApplicationController
  before_action :set_predmet, only: [:show, :edit, :update, :destroy]

  # GET /predmets
  # GET /predmets.json
  def index
    @predmets = Predmet.order("nazov ASC")
  end

  # GET /predmets/1
  # GET /predmets/1.json
  def show
    @casy=@predmet.cas.order("created_at DESC")
#    @predmet.cas.sum
  end
  
  # GET /predmets/new
  def new
    @predmet = Predmet.new
  end

  # GET /predmets/1/edit
  def edit
  end

  # POST /predmets
  # POST /predmets.json
  def create
    @predmet = Predmet.new(predmet_params)

    respond_to do |format|
      if @predmet.save
        format.html { redirect_to predmets_url, notice: 'Predmet was successfully created.' }
        format.json { render :show, status: :created, location: @predmet }
      else
        format.html { render :new }
        format.json { render json: @predmet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /predmets/1
  # PATCH/PUT /predmets/1.json
  def update
    respond_to do |format|
      if @predmet.update(predmet_params)
        format.html { redirect_to predmets_url, notice: 'Predmet was successfully updated.' }
        format.json { render :show, status: :ok, location: @predmet }
      else
        format.html { render :edit }
        format.json { render json: @predmet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predmets/1
  # DELETE /predmets/1.json
  def destroy
    @predmet.destroy
    respond_to do |format|
      format.html { redirect_to predmets_url, notice: 'Predmet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_predmet
      @predmet = Predmet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def predmet_params
      params.require(:predmet).permit(:nazov)
    end
end
