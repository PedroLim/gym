class MuscularGroupsController < ApplicationController
  before_action :set_muscular_group, only: [:show, :edit, :update, :destroy]

  # GET /muscular_groups
  # GET /muscular_groups.json
  def index
    @muscular_groups = MuscularGroup.all
  end

  # GET /muscular_groups/1
  # GET /muscular_groups/1.json
  def show
  end

  # GET /muscular_groups/new
  def new
    @muscular_group = MuscularGroup.new
  end

  # GET /muscular_groups/1/edit
  def edit
  end

  # POST /muscular_groups
  # POST /muscular_groups.json
  def create
    @muscular_group = MuscularGroup.new(muscular_group_params)

    respond_to do |format|
      if @muscular_group.save
        format.html { redirect_to @muscular_group, notice: 'Muscular group was successfully created.' }
        format.json { render :show, status: :created, location: @muscular_group }
      else
        format.html { render :new }
        format.json { render json: @muscular_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /muscular_groups/1
  # PATCH/PUT /muscular_groups/1.json
  def update
    respond_to do |format|
      if @muscular_group.update(muscular_group_params)
        format.html { redirect_to @muscular_group, notice: 'Muscular group was successfully updated.' }
        format.json { render :show, status: :ok, location: @muscular_group }
      else
        format.html { render :edit }
        format.json { render json: @muscular_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /muscular_groups/1
  # DELETE /muscular_groups/1.json
  def destroy
    @muscular_group.destroy
    respond_to do |format|
      format.html { redirect_to muscular_groups_url, notice: 'Muscular group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muscular_group
      @muscular_group = MuscularGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def muscular_group_params
      params.require(:muscular_group).permit(:name)
    end
end
