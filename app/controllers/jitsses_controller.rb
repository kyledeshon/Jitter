class JitssesController < ApplicationController
  before_action :set_jitss, only: %i[ show edit update destroy ]

  # GET /jitsses or /jitsses.json
  def index
    @jitsses = Jitss.all
  end

  # GET /jitsses/1 or /jitsses/1.json
  def show
  end

  # GET /jitsses/new
  def new
    @jitss = Jitss.new
  end

  # GET /jitsses/1/edit
  def edit
  end

  # POST /jitsses or /jitsses.json
  def create
    @jitss = Jitss.new(jitss_params)

    respond_to do |format|
      if @jitss.save
        format.html { redirect_to jitss_url(@jitss), notice: "Jitss was successfully created." }
        format.json { render :show, status: :created, location: @jitss }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jitss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jitsses/1 or /jitsses/1.json
  def update
    respond_to do |format|
      if @jitss.update(jitss_params)
        format.html { redirect_to jitss_url(@jitss), notice: "Jitss was successfully updated." }
        format.json { render :show, status: :ok, location: @jitss }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jitss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jitsses/1 or /jitsses/1.json
  def destroy
    @jitss.destroy

    respond_to do |format|
      format.html { redirect_to jitsses_url, notice: "Jitss was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jitss
      @jitss = Jitss.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jitss_params
      params.require(:jitss).permit(:content, :user_id)
    end
end
