class ContactInformationsController < ApplicationController
  before_action :set_contact_information, only: %i[ show edit update destroy ]
  before_action :set_leader
  # GET /contact_informations or /contact_informations.json
  def index
    @contact_information = ContactInformation.where(leader_id: params[:leader_id]).first_or_create
    render layout: "leader"
  end

  # GET /contact_informations/1 or /contact_informations/1.json
  def show
    @contact_information = ContactInformation.where(leader_id: params[:leader_id]).first_or_create
    render layout: "leader"
  end

  # GET /contact_informations/new
  def new
    @contact_information = ContactInformation.new
  end

  # GET /contact_informations/1/edit
  def edit
  end

  # POST /contact_informations or /contact_informations.json
  def create
    @contact_information = ContactInformation.new(contact_information_params)

    respond_to do |format|
      if @contact_information.save
        format.html { redirect_to @contact_information, notice: "Contact information was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_informations/1 or /contact_informations/1.json
  def update
    respond_to do |format|
      if @contact_information.update(contact_information_params)
        format.html { redirect_to leader_contact_informations_path(@leader), notice: "Contact information was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_informations/1 or /contact_informations/1.json
  def destroy
    @contact_information.destroy!

    respond_to do |format|
      format.html { redirect_to leaders_contact_informations_path, status: :see_other, notice: "Contact information was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_information
      @contact_information = ContactInformation.find_by leader_id: params[:leader_id].first
      if @contact_information.nil?
        @contact_information = ContactInformation.new(leader_id: params[:leader_id].first)
      end
      return @contact_information
    end

    def set_leader
      @leader = Leader.find(params[:leader_id])
    end

    # Only allow a list of trusted parameters through.
    def contact_information_params
      params.expect(contact_information: [ :leader_id, :physical_street_address1, :physical_street_address2, :physical_street_address3, :physical_city, :physical_state, :physical_zip, :physical_country, :permanent_street_address1, :permanent_street_address2, :permanent_street_address3, :permanent_city, :permanent_state, :permanent_zip, :permanent_country, :email, :phone, :phone_type, :alternate_phone ])
    end
end
