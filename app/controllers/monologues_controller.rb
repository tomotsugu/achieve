class MonologuesController < ApplicationController
  before_action :set_monologue, only: [:show, :edit, :update, :destroy]

  # GET /monologues
  # GET /monologues.json
  def index
    @monologues = Monologue.all
  end

  # GET /monologues/1
  # GET /monologues/1.json
  def show
  end

  # GET /monologues/new
  def new
    if params[:back]
      @monologue = Monologue.new(monologue_params)
    else
      @monologue = Monologue.new
    end
  end
  # POST /monologues/confirm
  def confirm
    @monologue = Monologue.new(monologue_params)
    render :new if @monologue.invalid?
  end

  # GET /monologues/1/edit
  def edit
  end

  # POST /monologues
  # POST /monologues.json
  def create
    @monologue = Monologue.new(monologue_params)

    respond_to do |format|
      if @monologue.save
        format.html { redirect_to @monologue, notice: 'Monologue was successfully created.' }
        format.json { render :show, status: :created, location: @monologue }
      else
        format.html { render :new }
        format.json { render json: @monologue.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /monologues/1
  # PATCH/PUT /monologues/1.json
  def update
    @monologue = Monologue.find(params[:id])
    if @monologue.update(monologue_params)
      redirect_to monologues_path, notice: "ブログを編集しました！"
    else
      render 'edit'
    end
  end
  # DELETE /monologues/1
  # DELETE /monologues/1.json
  def destroy
    @monologue.destroy
    respond_to do |format|
      format.html { redirect_to monologues_url, notice: 'Monologue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monologue
      @monologue = Monologue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monologue_params
      params.require(:monologue).permit(:content)
    end
end
