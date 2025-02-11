require "application_system_test_case"

class EmergencyContactsTest < ApplicationSystemTestCase
  setup do
    @emergency_contact = emergency_contacts(:one)
  end

  test "visiting the index" do
    visit emergency_contacts_url
    assert_selector "h1", text: "Emergency contacts"
  end

  test "should create emergency contact" do
    visit emergency_contacts_url
    click_on "New emergency contact"

    fill_in "City", with: @emergency_contact.city
    fill_in "Country", with: @emergency_contact.country
    fill_in "Email", with: @emergency_contact.email
    fill_in "Firstname", with: @emergency_contact.firstName
    fill_in "Lastname", with: @emergency_contact.lastName
    fill_in "Leader", with: @emergency_contact.leader_id
    fill_in "Middlename", with: @emergency_contact.middleName
    fill_in "Phonenumber", with: @emergency_contact.phoneNumber
    fill_in "State", with: @emergency_contact.state
    fill_in "Streetaddress1", with: @emergency_contact.streetAddress1
    fill_in "Streetaddress2", with: @emergency_contact.streetAddress2
    fill_in "Zip", with: @emergency_contact.zip
    click_on "Create Emergency contact"

    assert_text "Emergency contact was successfully created"
    click_on "Back"
  end

  test "should update Emergency contact" do
    visit emergency_contact_url(@emergency_contact)
    click_on "Edit this emergency contact", match: :first

    fill_in "City", with: @emergency_contact.city
    fill_in "Country", with: @emergency_contact.country
    fill_in "Email", with: @emergency_contact.email
    fill_in "Firstname", with: @emergency_contact.firstName
    fill_in "Lastname", with: @emergency_contact.lastName
    fill_in "Leader", with: @emergency_contact.leader_id
    fill_in "Middlename", with: @emergency_contact.middleName
    fill_in "Phonenumber", with: @emergency_contact.phoneNumber
    fill_in "State", with: @emergency_contact.state
    fill_in "Streetaddress1", with: @emergency_contact.streetAddress1
    fill_in "Streetaddress2", with: @emergency_contact.streetAddress2
    fill_in "Zip", with: @emergency_contact.zip
    click_on "Update Emergency contact"

    assert_text "Emergency contact was successfully updated"
    click_on "Back"
  end

  test "should destroy Emergency contact" do
    visit emergency_contact_url(@emergency_contact)
    click_on "Destroy this emergency contact", match: :first

    assert_text "Emergency contact was successfully destroyed"
  end
end
