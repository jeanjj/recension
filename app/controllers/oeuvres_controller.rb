class OeuvresController < ApplicationController
  before_action :set_oeuvre, only: [:show, :edit, :update, :destroy]

  # GET /oeuvres
  # GET /oeuvres.json
  def index
    @oeuvres = Oeuvre.all
  end

  # GET /oeuvres/1
  # GET /oeuvres/1.json
  def show
  end

  # GET /oeuvres/new
  def new
    @oeuvre = Oeuvre.new
  end

  # GET /oeuvres/1/edit
  def edit
  end

  # POST /oeuvres
  # POST /oeuvres.json
  def create
    @oeuvre = Oeuvre.new(oeuvre_params)

    respond_to do |format|
      if @oeuvre.save
        format.html { redirect_to @oeuvre, notice: 'Oeuvre was successfully created.' }
        format.json { render :show, status: :created, location: @oeuvre }
      else
        format.html { render :new }
        format.json { render json: @oeuvre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oeuvres/1
  # PATCH/PUT /oeuvres/1.json
  def update
    respond_to do |format|
      if @oeuvre.update(oeuvre_params)
        format.html { redirect_to @oeuvre, notice: 'Oeuvre was successfully updated.' }
        format.json { render :show, status: :ok, location: @oeuvre }
      else
        format.html { render :edit }
        format.json { render json: @oeuvre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oeuvres/1
  # DELETE /oeuvres/1.json
  def destroy
    @oeuvre.destroy
    respond_to do |format|
      format.html { redirect_to oeuvres_url, notice: 'Oeuvre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oeuvre
      @oeuvre = Oeuvre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oeuvre_params
      params.require(:oeuvre).permit(:auteur, :titre, :forme, :date, :localisation, :descritpion, :critiques, :connexes)
    end
end
