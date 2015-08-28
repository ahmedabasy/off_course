class AssignmentManagemetsController < ApplicationController
  before_action :set_assignment_managemet, only: [:show, :edit, :update, :destroy]

  # GET /assignment_managemets
  # GET /assignment_managemets.json
  def index
    @assignment_managemets = AssignmentManagemet.all
  end

  # GET /assignment_managemets/1
  # GET /assignment_managemets/1.json
  def show
  end

  # GET /assignment_managemets/new
  def new
    @assignment_managemet = AssignmentManagemet.new
  end

  # GET /assignment_managemets/1/edit
  def edit
  end

  # POST /assignment_managemets
  # POST /assignment_managemets.json
  def create
    @assignment_managemet = AssignmentManagemet.new(assignment_managemet_params)

    respond_to do |format|
      if @assignment_managemet.save
        format.html { redirect_to @assignment_managemet, notice: 'Assignment managemet was successfully created.' }
        format.json { render :show, status: :created, location: @assignment_managemet }
      else
        format.html { render :new }
        format.json { render json: @assignment_managemet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignment_managemets/1
  # PATCH/PUT /assignment_managemets/1.json
  def update
    respond_to do |format|
      if @assignment_managemet.update(assignment_managemet_params)
        format.html { redirect_to @assignment_managemet, notice: 'Assignment managemet was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment_managemet }
      else
        format.html { render :edit }
        format.json { render json: @assignment_managemet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignment_managemets/1
  # DELETE /assignment_managemets/1.json
  def destroy
    @assignment_managemet.destroy
    respond_to do |format|
      format.html { redirect_to assignment_managemets_url, notice: 'Assignment managemet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment_managemet
      @assignment_managemet = AssignmentManagemet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_managemet_params
      params.require(:assignment_managemet).permit(:name, :deadline, :score)
    end
end
