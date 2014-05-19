class OcorrencesController < ApplicationController
  before_action :set_ocorrence, only: [:show, :edit, :update, :destroy]

  # GET /ocorrences
  # GET /ocorrences.json
  def index
    @ocorrences = Ocorrence.all
  end

  # GET /ocorrences/1
  # GET /ocorrences/1.json
  def show
  end

  # GET /ocorrences/new
  def new
    @ocorrence = Ocorrence.new
  end

  # GET /ocorrences/1/edit
  def edit
  end

  # POST /ocorrences
  # POST /ocorrences.json
  def create
    @ocorrence = Ocorrence.new(ocorrence_params)

    respond_to do |format|
      if @ocorrence.save
        format.html { redirect_to @ocorrence, notice: 'Ocorrence was successfully created.' }
        format.json { render :show, status: :created, location: @ocorrence }
      else
        format.html { render :new }
        format.json { render json: @ocorrence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ocorrences/1
  # PATCH/PUT /ocorrences/1.json
  def update
    respond_to do |format|
      if @ocorrence.update(ocorrence_params)
        format.html { redirect_to @ocorrence, notice: 'Ocorrence was successfully updated.' }
        format.json { render :show, status: :ok, location: @ocorrence }
      else
        format.html { render :edit }
        format.json { render json: @ocorrence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ocorrences/1
  # DELETE /ocorrences/1.json
  def destroy
    @ocorrence.destroy
    respond_to do |format|
      format.html { redirect_to ocorrences_url, notice: 'Ocorrence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ocorrence
      @ocorrence = Ocorrence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ocorrence_params
      params.require(:ocorrence).permit(:tipo_ocorrencia, :descricao, :nome_vitima, :endereco, :nome_contato, :tel_contato)
    end
end
