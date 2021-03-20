class LocalArmazenamentosController < ApplicationController
  before_action :set_local_armazenamento, only: %i[ show edit update destroy ]

  # GET /local_armazenamentos or /local_armazenamentos.json
  def index
    @local_armazenamentos = LocalArmazenamento.all
  end

  # GET /local_armazenamentos/1 or /local_armazenamentos/1.json
  def show
  end

  # GET /local_armazenamentos/new
  def new
    @local_armazenamento = LocalArmazenamento.new
  end

  # GET /local_armazenamentos/1/edit
  def edit
  end

  # POST /local_armazenamentos or /local_armazenamentos.json
  def create
    @local_armazenamento = LocalArmazenamento.new(local_armazenamento_params)

    respond_to do |format|
      if @local_armazenamento.save
        format.html { redirect_to @local_armazenamento, notice: "Local armazenamento was successfully created." }
        format.json { render :show, status: :created, location: @local_armazenamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @local_armazenamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /local_armazenamentos/1 or /local_armazenamentos/1.json
  def update
    respond_to do |format|
      if @local_armazenamento.update(local_armazenamento_params)
        format.html { redirect_to @local_armazenamento, notice: "Local armazenamento was successfully updated." }
        format.json { render :show, status: :ok, location: @local_armazenamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @local_armazenamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_armazenamentos/1 or /local_armazenamentos/1.json
  def destroy
    @local_armazenamento.destroy
    respond_to do |format|
      format.html { redirect_to local_armazenamentos_url, notice: "Local armazenamento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_local_armazenamento
      @local_armazenamento = LocalArmazenamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def local_armazenamento_params
      params.require(:local_armazenamento).permit(:nome)
    end
end
