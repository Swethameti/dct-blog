class AdvetisersController < ApplicationController
  before_action :set_advetiser, only: [:show, :edit, :update, :destroy]

  # GET /advetisers
  # GET /advetisers.json
  def index
    @advetisers = Advetiser.all
  end

  # GET /advetisers/1
  # GET /advetisers/1.json
  def show
  end

  # GET /advetisers/new
  def new
    @advetiser = Advetiser.new
  end

  # GET /advetisers/1/edit
  def edit
  end

  # POST /advetisers
  # POST /advetisers.json
  def create
    @advetiser = Advetiser.new(advetiser_params)

    respond_to do |format|
      if @advetiser.save
        format.html { redirect_to @advetiser, notice: 'Advetiser was successfully created.' }
        format.json { render :show, status: :created, location: @advetiser }
      else
        format.html { render :new }
        format.json { render json: @advetiser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advetisers/1
  # PATCH/PUT /advetisers/1.json
  def update
    respond_to do |format|
      if @advetiser.update(advetiser_params)
        format.html { redirect_to @advetiser, notice: 'Advetiser was successfully updated.' }
        format.json { render :show, status: :ok, location: @advetiser }
      else
        format.html { render :edit }
        format.json { render json: @advetiser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advetisers/1
  # DELETE /advetisers/1.json
  def destroy
    @advetiser.destroy
    respond_to do |format|
      format.html { redirect_to advetisers_url, notice: 'Advetiser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advetiser
      @advetiser = Advetiser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advetiser_params
      params.require(:advetiser).permit(:name)
    end
end
