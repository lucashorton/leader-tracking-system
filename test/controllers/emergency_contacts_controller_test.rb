require "test_helper"

class EmergencyContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emergency_contact = emergency_contacts(:one)
  end

  test "should get index" do
    get emergency_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_emergency_contact_url
    assert_response :success
  end

  test "should create emergency_contact" do
    assert_difference("EmergencyContact.count") do
      post emergency_contacts_url, params: { emergency_contact: { city: @emergency_contact.city, country: @emergency_contact.country, email: @emergency_contact.email, firstName: @emergency_contact.firstName, lastName: @emergency_contact.lastName, leader_id: @emergency_contact.leader_id, middleName: @emergency_contact.middleName, phoneNumber: @emergency_contact.phoneNumber, state: @emergency_contact.state, streetAddress1: @emergency_contact.streetAddress1, streetAddress2: @emergency_contact.streetAddress2, zip: @emergency_contact.zip } }
    end

    assert_redirected_to emergency_contact_url(EmergencyContact.last)
  end

  test "should show emergency_contact" do
    get emergency_contact_url(@emergency_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_emergency_contact_url(@emergency_contact)
    assert_response :success
  end

  test "should update emergency_contact" do
    patch emergency_contact_url(@emergency_contact), params: { emergency_contact: { city: @emergency_contact.city, country: @emergency_contact.country, email: @emergency_contact.email, firstName: @emergency_contact.firstName, lastName: @emergency_contact.lastName, leader_id: @emergency_contact.leader_id, middleName: @emergency_contact.middleName, phoneNumber: @emergency_contact.phoneNumber, state: @emergency_contact.state, streetAddress1: @emergency_contact.streetAddress1, streetAddress2: @emergency_contact.streetAddress2, zip: @emergency_contact.zip } }
    assert_redirected_to emergency_contact_url(@emergency_contact)
  end

  test "should destroy emergency_contact" do
    assert_difference("EmergencyContact.count", -1) do
      delete emergency_contact_url(@emergency_contact)
    end

    assert_redirected_to emergency_contacts_url
  end
end
