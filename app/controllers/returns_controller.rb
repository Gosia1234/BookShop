class ReturnsController < ApplicationController
  before_action :set_return, only: [:show, :edit, :update, :destroy]

  # GET /returns
  # GET /returns.json
  def index
    @returns = Return.all
  end

  # GET /returns/1
  # GET /returns/1.json
  def show
  end

  # GET /returns/new
  def new
    @return = Return.new
  end

  # GET /returns/1/edit
  def edit
  end

  # POST /returns
  # POST /returns.json
  def create
    @return = Return.new(return_params)

    respond_to do |format|
      if @return.save
        format.html { redirect_to @return, notice: 'Return was successfully created.' }
        format.json { render :show, status: :created, location: @return }
      else
        format.html { render :new }
        format.json { render json: @return.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /returns/1
  # PATCH/PUT /returns/1.json
  def update
    respond_to do |format|
      if @return.update(return_params)
        format.html { redirect_to @return, notice: 'Return was successfully updated.' }
        format.json { render :show, status: :ok, location: @return }
      else
        format.html { render :edit }
        format.json { render json: @return.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /returns/1
  # DELETE /returns/1.json
  def destroy
    @return.destroy
    respond_to do |format|
      format.html { redirect_to returns_url, notice: 'Return was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_return
      @return = Return.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def return_params
      params.require(:return).permit(:returnDate, :saleItem_id)
    end
end
