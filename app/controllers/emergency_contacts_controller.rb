class EmergencyContactsController < ApplicationController
  before_action :set_emergency_contact, only: %i[ show edit update destroy ]
  before_action :set_leader
  def index
    @emergency_contact = EmergencyContact.where(leader_id: params[:leader_id]).first_or_create
  end

  # GET /emergency_contacts/1 or /emergency_contacts/1.json
  def show
    @emergency_contact = EmergencyContact.where(leader_id: params[:leader_id]).first_or_create
  end

  # GET /emergency_contacts/new
  def new
    @emergency_contact = EmergencyContact.new
  end

  # GET /emergency_contacts/1/edit
  def edit
  end

  # POST /emergency_contacts or /emergency_contacts.json
  def create
    @emergency_contact = EmergencyContact.new(emergency_contact_params)

    respond_to do |format|
      if @emergency_contact.save
        format.html { redirect_to @emergency_contact, notice: "Contact information was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emergency_contacts/1 or /emergency_contacts/1.json
  def update
    respond_to do |format|
      if @emergency_contact.update(emergency_contact_params)
        format.html { redirect_to leader_emergency_contacts_path(@leader), notice: "Contact information was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emergency_contacts/1 or /emergency_contacts/1.json
  def destroy
    @emergency_contact.destroy!

    respond_to do |format|
      format.html { redirect_to leaders_emergency_contacts_path, status: :see_other, notice: "Contact information was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emergency_contact
      @emergency_contact = EmergencyContact.find_by leader_id: params[:leader_id].first
      if @emergency_contact.nil?
        @emergency_contact = EmergencyContact.new(leader_id: params[:leader_id].first)
      end
      return @emergency_contact
    end

    def set_leader
      @leader = Leader.find(params[:leader_id])
    end

    # Only allow a list of trusted parameters through.
    def emergency_contact_params
      params.expect(emergency_contact: [ :leader_id, :firstName, :middleName, :lastName, :phoneNumber, :streetAddress1, :streetAddress2, :city, :state, :zip, :country, :email ])
    end
end
