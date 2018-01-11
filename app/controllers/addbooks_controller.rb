class AddbooksController < ApplicationController
  before_action :set_addbook, only: [:show, :edit, :update, :destroy]

  # GET /addbooks
  # GET /addbooks.json
  def index
    @addbooks = Addbook.all
  end

  # GET /addbooks/1
  # GET /addbooks/1.json
  def show
  end

  # GET /addbooks/new
  def new
    @addbook = Addbook.new
  end

  # GET /addbooks/1/edit
  def edit
  end

  # POST /addbooks
  # POST /addbooks.json
  def create
    @addbook = Addbook.new(addbook_params)

    respond_to do |format|
      if @addbook.save
        format.html { redirect_to @addbook, notice: 'Addbook was successfully created.' }
        format.json { render :show, status: :created, location: @addbook }
      else
        format.html { render :new }
        format.json { render json: @addbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addbooks/1
  # PATCH/PUT /addbooks/1.json
  def update
    respond_to do |format|
      if @addbook.update(addbook_params)
        format.html { redirect_to @addbook, notice: 'Addbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @addbook }
      else
        format.html { render :edit }
        format.json { render json: @addbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addbooks/1
  # DELETE /addbooks/1.json
  def destroy
    @addbook.destroy
    respond_to do |format|
      format.html { redirect_to addbooks_url, notice: 'Addbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addbook
      @addbook = Addbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addbook_params
      params.require(:addbook).permit(:name, :addr, :addyear)
    end
end
