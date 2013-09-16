class Micropost2sController < ApplicationController
  before_action :set_micropost2, only: [:show, :edit, :update, :destroy]

  # GET /micropost2s
  # GET /micropost2s.json
  def index
    @micropost2s = Micropost2.all
  end

  # GET /micropost2s/1
  # GET /micropost2s/1.json
  def show
  end

  # GET /micropost2s/new
  def new
    @micropost2 = Micropost2.new
  end

  # GET /micropost2s/1/edit
  def edit
  end

  # POST /micropost2s
  # POST /micropost2s.json
  def create
    @micropost2 = Micropost2.new(micropost2_params)

    respond_to do |format|
      if @micropost2.save
        format.html { redirect_to @micropost2, notice: 'Micropost2 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @micropost2 }
      else
        format.html { render action: 'new' }
        format.json { render json: @micropost2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micropost2s/1
  # PATCH/PUT /micropost2s/1.json
  def update
    respond_to do |format|
      if @micropost2.update(micropost2_params)
        format.html { redirect_to @micropost2, notice: 'Micropost2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @micropost2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropost2s/1
  # DELETE /micropost2s/1.json
  def destroy
    @micropost2.destroy
    respond_to do |format|
      format.html { redirect_to micropost2s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropost2
      @micropost2 = Micropost2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micropost2_params
      params.require(:micropost2).permit(:content, :user_id)
    end
end
