class StudentModulesController < ApplicationController
  before_action :set_student_module, only: [:show, :edit, :update, :destroy]
  #Authenticate the user before letting them call any of the methods in this class
  before_action :authenticate_student!

  # GET /student_modules
  # GET /student_modules.json
  # This method gets all the student's modules
  def index
    @student_modules = StudentModule.all
  end

  # GET /student_modules/1
  # GET /student_modules/1.json
  def show
  end

  # GET /student_modules/new
  # This method lets a student module model be initialized
  def new
    @student_module = StudentModule.new
  end

  # GET /student_modules/1/edit
  def edit
  end

  # POST /student_modules
  # POST /student_modules.json
  # This method lets a student module model be added into the database
  def create
    @student_module = StudentModule.new(student_module_params)
    respond_to do |format|
      if @student_module.save
        format.html { redirect_to @student_module, notice: 'Student module was successfully created.' }
        format.json { render :show, status: :created, location: @student_module }
      else
        format.html { render :new }
        format.json { render json: @student_module.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /student_modules/1
  # PATCH/PUT /student_modules/1.json
  def update
    respond_to do |format|
      if @student_module.update(student_module_params)
        format.html { redirect_to @student_module, notice: 'Student module was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_module }
      else
        format.html { render :edit }
        format.json { render json: @student_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_modules/1
  # DELETE /student_modules/1.json
  # This method lets the user delete the student module object shown on the UI
  def destroy
    @student_module.destroy
    respond_to do |format|
      format.html { redirect_to student_modules_url, notice: 'Student module was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_module
      @student_module = StudentModule.find(params[:id])
    end

    # Set which parameters can go in
    def student_module_params
      params.require(:student_module).permit(:course_module_id, :student_id)
    end
end
