class FunctionalNavBarsController < ApplicationController
  before_action :set_functional_nav_bar, only: %i[ show edit update destroy ]

  # GET /functional_nav_bars or /functional_nav_bars.json
  def index
    @functional_nav_bars = FunctionalNavBar.all
  end

  # GET /functional_nav_bars/1 or /functional_nav_bars/1.json
  def show
  end

  # GET /functional_nav_bars/new
  def new
    @functional_nav_bar = FunctionalNavBar.new
  end

  # GET /functional_nav_bars/1/edit
  def edit
  end

  # POST /functional_nav_bars or /functional_nav_bars.json
  def create
    @functional_nav_bar = FunctionalNavBar.new(functional_nav_bar_params)

    respond_to do |format|
      if @functional_nav_bar.save
        format.html { redirect_to functional_nav_bar_url(@functional_nav_bar), notice: "Functional nav bar was successfully created." }
        format.json { render :show, status: :created, location: @functional_nav_bar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @functional_nav_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /functional_nav_bars/1 or /functional_nav_bars/1.json
  def update
    respond_to do |format|
      if @functional_nav_bar.update(functional_nav_bar_params)
        format.html { redirect_to functional_nav_bar_url(@functional_nav_bar), notice: "Functional nav bar was successfully updated." }
        format.json { render :show, status: :ok, location: @functional_nav_bar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @functional_nav_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /functional_nav_bars/1 or /functional_nav_bars/1.json
  def destroy
    @functional_nav_bar.destroy

    respond_to do |format|
      format.html { redirect_to functional_nav_bars_url, notice: "Functional nav bar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_functional_nav_bar
      @functional_nav_bar = FunctionalNavBar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def functional_nav_bar_params
      params.require(:functional_nav_bar).permit(:home, :about, :community, :contact, :features, :login_sigup)
    end
end
