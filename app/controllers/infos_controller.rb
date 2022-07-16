class InfosController < ApplicationController
  before_action :get_source
  before_action :set_info, only: %i[ show edit update destroy ]

  # GET /infos or /infos.json
  def index
    @infos = @source.infos
  end

  # GET /infos/1 or /infos/1.json
  def show
  end

  # GET /infos/new
  def new
    @info = @source.infos.build
  end

  # GET /infos/1/edit
  def edit
  end

  # POST /infos or /infos.json
  def create
    @info = @source.infos.build(info_params)

    respond_to do |format|
      if @info.save
        format.html { redirect_to source_path(@source), notice: "Info créée avec succès." }
        format.json { render :show, status: :created, location: @info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infos/1 or /infos/1.json
  def update
    respond_to do |format|
      if @info.update(info_params)
        format.html { redirect_to source_info_path(@source), notice: "Info mis à jour avec succès." }
        format.json { render :show, status: :ok, location: @info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infos/1 or /infos/1.json
  def destroy
    @info.destroy

    respond_to do |format|
      format.html { redirect_to source_path(@source), notice: "Info a été supprimée avec succès." }
      format.json { head :no_content }
    end
  end

  private
    def get_source
      @source = Source.find(params[:source_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      @info = @source.infos.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def info_params
      params.require(:info).permit(:agent, :event, :ouvrage, :priority, :target, :rte, :detail, :devis, :brips, :oups, :ameps, :ais, :source_id, :status)
    end

    def archived
      @info = Info.find(params[status: 'Archived']) 
    end
end


