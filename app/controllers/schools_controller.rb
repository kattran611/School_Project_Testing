class SchoolsController < ApplicationController
  before_action :set_school, only[:show, :edit, :update, :destroy]
  # GET /schools
  def index
    @schools = School.all
  end
  # GET /schools/1
  def show

  end
  # GET /schools/new
  def new
    @school = School.new
  end
  # GET /schools/edit
  def edit

  end

  # POST /schools
  def update
    if @school.update(school_params)
      redirect_to @school, notice: 'School has been updated'
  end


  def create
    @school = School.new(school_params)
    if @school.save
      redirect_to @school, notice: 'School has been cerated'
    else
      render :new
    end
  end
  # DELETE /schools
  def delete
    @school.destroy
    redirect_to schools_path, notice: 'School has been deleted'
  end

  private
    def set_school
      @school = School.find(params[:id])
    end

    def school_params
      params.require(:school).permit(:name, :address, :principal, :capacity, :private_school)
    end
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a trusted parameter "white list" through.

end
