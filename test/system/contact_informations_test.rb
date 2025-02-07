require "application_system_test_case"

class ContactInformationsTest < ApplicationSystemTestCase
  setup do
    @contact_information = contact_informations(:one)
  end

  test "visiting the index" do
    visit contact_informations_url
    assert_selector "h1", text: "Contact information"
  end

  test "should create contact information" do
    visit contact_informations_url
    click_on "New contact information"

    fill_in "Alternate phone", with: @contact_information.alternate_phone
    fill_in "Email", with: @contact_information.email
    fill_in "Leader", with: @contact_information.leader_id
    fill_in "Permanent city", with: @contact_information.permanent_city
    fill_in "Permanent country", with: @contact_information.permanent_country
    fill_in "Permanent state", with: @contact_information.permanent_state
    fill_in "Permanent street address1", with: @contact_information.permanent_street_address1
    fill_in "Permanent street address2", with: @contact_information.permanent_street_address2
    fill_in "Permanent street address3", with: @contact_information.permanent_street_address3
    fill_in "Permanent zip", with: @contact_information.permanent_zip
    fill_in "Phone", with: @contact_information.phone
    fill_in "Phone type", with: @contact_information.phone_type
    fill_in "Physical city", with: @contact_information.physical_city
    fill_in "Physical country", with: @contact_information.physical_country
    fill_in "Physical state", with: @contact_information.physical_state
    fill_in "Physical street address1", with: @contact_information.physical_street_address1
    fill_in "Physical street address2", with: @contact_information.physical_street_address2
    fill_in "Physical street address3", with: @contact_information.physical_street_address3
    fill_in "Physical zip", with: @contact_information.physical_zip
    click_on "Create Contact information"

    assert_text "Contact information was successfully created"
    click_on "Back"
  end

  test "should update Contact information" do
    visit contact_information_url(@contact_information)
    click_on "Edit this contact information", match: :first

    fill_in "Alternate phone", with: @contact_information.alternate_phone
    fill_in "Email", with: @contact_information.email
    fill_in "Leader", with: @contact_information.leader_id
    fill_in "Permanent city", with: @contact_information.permanent_city
    fill_in "Permanent country", with: @contact_information.permanent_country
    fill_in "Permanent state", with: @contact_information.permanent_state
    fill_in "Permanent street address1", with: @contact_information.permanent_street_address1
    fill_in "Permanent street address2", with: @contact_information.permanent_street_address2
    fill_in "Permanent street address3", with: @contact_information.permanent_street_address3
    fill_in "Permanent zip", with: @contact_information.permanent_zip
    fill_in "Phone", with: @contact_information.phone
    fill_in "Phone type", with: @contact_information.phone_type
    fill_in "Physical city", with: @contact_information.physical_city
    fill_in "Physical country", with: @contact_information.physical_country
    fill_in "Physical state", with: @contact_information.physical_state
    fill_in "Physical street address1", with: @contact_information.physical_street_address1
    fill_in "Physical street address2", with: @contact_information.physical_street_address2
    fill_in "Physical street address3", with: @contact_information.physical_street_address3
    fill_in "Physical zip", with: @contact_information.physical_zip
    click_on "Update Contact information"

    assert_text "Contact information was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact information" do
    visit contact_information_url(@contact_information)
    click_on "Destroy this contact information", match: :first

    assert_text "Contact information was successfully destroyed"
  end
end
