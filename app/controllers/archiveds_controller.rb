class ArchivedsController < ApplicationController
  before_action :set_archived, only: %i[ show edit update destroy ]

  # GET /archiveds or /archiveds.json
  def index
    @archiveds = @source.archiveds
  end

  # GET /archiveds/1 or /archiveds/1.json
  def show
  end

  # GET /archiveds/new
  # def new
  #    @archived = Archived.new
  # end

  # GET /archiveds/1/edit
  # def edit
  # end

  # POST /archiveds or /archiveds.json
  # def create
  #   @archived = Archived.new(archived_params)
  #
  #   respond_to do |format|
  #     if @archived.save
  #       format.html { redirect_to archived_url(@archived), notice: "Archived was successfully created." }
  #       format.json { render :show, status: :created, location: @archived }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @archived.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /archiveds/1 or /archiveds/1.json
  # def update
  #   respond_to do |format|
  #     if @archived.update(archived_params)
  #       format.html { redirect_to archived_url(@archived), notice: "Archived was successfully updated." }
  #       format.json { render :show, status: :ok, location: @archived }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @archived.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /archiveds/1 or /archiveds/1.json
  def destroy
    @archived.destroy

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
    def set_archived
      @archived = Archived.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def archived_params
      params.require(:archived).permit(:agent, :event, :ouvrage, :priority, :target, :rte, :detail, :devis, :brips, :oups, :ameps, :ais, :source_id, :status)
    end
end
