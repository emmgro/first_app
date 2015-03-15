class BicicletaController < ApplicationController
  before_action :set_bicicletum, only: [:show, :edit, :update, :destroy]

  # GET /bicicleta
  # GET /bicicleta.json
  def index
    @bicicleta = Bicicleta.all
  end

  # GET /bicicleta/1
  # GET /bicicleta/1.json
  def show
  end

  # GET /bicicleta/new
  def new
    @bicicletum = Bicicletum.new
  end

  # GET /bicicleta/1/edit
  def edit
  end

  # POST /bicicleta
  # POST /bicicleta.json
  def create
    @bicicletum = Bicicletum.new(bicicletum_params)

    respond_to do |format|
      if @bicicletum.save
        format.html { redirect_to @bicicletum, notice: 'Bicicletum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bicicletum }
      else
        format.html { render action: 'new' }
        format.json { render json: @bicicletum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicicleta/1
  # PATCH/PUT /bicicleta/1.json
  def update
    respond_to do |format|
      if @bicicletum.update(bicicletum_params)
        format.html { redirect_to @bicicletum, notice: 'Bicicletum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bicicletum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicicleta/1
  # DELETE /bicicleta/1.json
  def destroy
    @bicicletum.destroy
    respond_to do |format|
      format.html { redirect_to bicicleta_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicicletum
      @bicicletum = Bicicletum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bicicletum_params
      params.require(:bicicletum).permit(:marca, :precio, :descripcion)
    end
end
