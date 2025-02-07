require "test_helper"

class ContactInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_information = contact_informations(:one)
  end

  test "should get index" do
    get contact_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_information_url
    assert_response :success
  end

  test "should create contact_information" do
    assert_difference("ContactInformation.count") do
      post contact_informations_url, params: { contact_information: { alternate_phone: @contact_information.alternate_phone, email: @contact_information.email, leader_id: @contact_information.leader_id, permanent_city: @contact_information.permanent_city, permanent_country: @contact_information.permanent_country, permanent_state: @contact_information.permanent_state, permanent_street_address1: @contact_information.permanent_street_address1, permanent_street_address2: @contact_information.permanent_street_address2, permanent_street_address3: @contact_information.permanent_street_address3, permanent_zip: @contact_information.permanent_zip, phone: @contact_information.phone, phone_type: @contact_information.phone_type, physical_city: @contact_information.physical_city, physical_country: @contact_information.physical_country, physical_state: @contact_information.physical_state, physical_street_address1: @contact_information.physical_street_address1, physical_street_address2: @contact_information.physical_street_address2, physical_street_address3: @contact_information.physical_street_address3, physical_zip: @contact_information.physical_zip } }
    end

    assert_redirected_to contact_information_url(ContactInformation.last)
  end

  test "should show contact_information" do
    get contact_information_url(@contact_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_information_url(@contact_information)
    assert_response :success
  end

  test "should update contact_information" do
    patch contact_information_url(@contact_information), params: { contact_information: { alternate_phone: @contact_information.alternate_phone, email: @contact_information.email, leader_id: @contact_information.leader_id, permanent_city: @contact_information.permanent_city, permanent_country: @contact_information.permanent_country, permanent_state: @contact_information.permanent_state, permanent_street_address1: @contact_information.permanent_street_address1, permanent_street_address2: @contact_information.permanent_street_address2, permanent_street_address3: @contact_information.permanent_street_address3, permanent_zip: @contact_information.permanent_zip, phone: @contact_information.phone, phone_type: @contact_information.phone_type, physical_city: @contact_information.physical_city, physical_country: @contact_information.physical_country, physical_state: @contact_information.physical_state, physical_street_address1: @contact_information.physical_street_address1, physical_street_address2: @contact_information.physical_street_address2, physical_street_address3: @contact_information.physical_street_address3, physical_zip: @contact_information.physical_zip } }
    assert_redirected_to contact_information_url(@contact_information)
  end

  test "should destroy contact_information" do
    assert_difference("ContactInformation.count", -1) do
      delete contact_information_url(@contact_information)
    end

    assert_redirected_to contact_informations_url
  end
end
