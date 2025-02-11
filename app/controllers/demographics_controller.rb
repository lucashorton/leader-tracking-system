class DemographicsController < ApplicationController
  before_action :set_demographic, only: %i[ show edit update destroy ]

before_action :set_leader
  def index
    @demographic = Demographic.where(leader_id: params[:leader_id]).first_or_create
  end

  # GET /demographics/1 or /demographics/1.json
  def show
    @demographic = Demographic.where(leader_id: params[:leader_id]).first_or_create
  end

  # GET /demographics/new
  def new
    @demographic = Demographic.new
  end

  # GET /demographics/1/edit
  def edit
  end

  # POST /demographics or /demographics.json
  def create
    @demographic = Demographic.new(demographic_params)

    respond_to do |format|
      if @demographic.save
        format.html { redirect_to @demographic, notice: "Contact information was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demographics/1 or /demographics/1.json
  def update
    respond_to do |format|
      if @demographic.update(demographic_params)
        format.html { redirect_to leader_demographics_path(@leader), notice: "Contact information was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demographics/1 or /demographics/1.json
  def destroy
    @demographic.destroy!

    respond_to do |format|
      format.html { redirect_to leaders_demographics_path, status: :see_other, notice: "Contact information was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demographic
      @demographic = Demographic.find_by leader_id: params[:leader_id].first
      if @demographic.nil?
        @demographic = Demographic.new(leader_id: params[:leader_id].first)
      end
      return @demographic
    end

    def set_leader
      @leader = Leader.find(params[:leader_id])
    end

    # Only allow a list of trusted parameters through.
    def demographic_params
      params.expect(demographic: [ :leader_id, :raceAmericanIndian, :raceAsian, :raceBlack, :raceHispanic, :raceHawaiian, :raceWhite, :raceDidNotProvide, :gender, :dateOfBirth, :cityOfBirth, :stateOfBirth, :language, :military, :parent1EducationalLevel, :parent2EducationalLevel, :currentHouseholdIncome ])
    end
end
