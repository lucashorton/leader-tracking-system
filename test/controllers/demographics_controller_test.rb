require "test_helper"

class DemographicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @demographic = demographics(:one)
  end

  test "should get index" do
    get demographics_url
    assert_response :success
  end

  test "should get new" do
    get new_demographic_url
    assert_response :success
  end

  test "should create demographic" do
    assert_difference("Demographic.count") do
      post demographics_url, params: { demographic: { cityOfBirth: @demographic.cityOfBirth, currentHouseholdIncome: @demographic.currentHouseholdIncome, dateOfBirth: @demographic.dateOfBirth, gender: @demographic.gender, language: @demographic.language, leader_id: @demographic.leader_id, military: @demographic.military, parent1EducationalLevel: @demographic.parent1EducationalLevel, parent2EducationalLevel: @demographic.parent2EducationalLevel, raceAmericanIndian: @demographic.raceAmericanIndian, raceAsian: @demographic.raceAsian, raceBlack: @demographic.raceBlack, raceDidNotProvide: @demographic.raceDidNotProvide, raceHawaiian: @demographic.raceHawaiian, raceHispanic: @demographic.raceHispanic, raceWhite: @demographic.raceWhite, stateOfBirth: @demographic.stateOfBirth } }
    end

    assert_redirected_to demographic_url(Demographic.last)
  end

  test "should show demographic" do
    get demographic_url(@demographic)
    assert_response :success
  end

  test "should get edit" do
    get edit_demographic_url(@demographic)
    assert_response :success
  end

  test "should update demographic" do
    patch demographic_url(@demographic), params: { demographic: { cityOfBirth: @demographic.cityOfBirth, currentHouseholdIncome: @demographic.currentHouseholdIncome, dateOfBirth: @demographic.dateOfBirth, gender: @demographic.gender, language: @demographic.language, leader_id: @demographic.leader_id, military: @demographic.military, parent1EducationalLevel: @demographic.parent1EducationalLevel, parent2EducationalLevel: @demographic.parent2EducationalLevel, raceAmericanIndian: @demographic.raceAmericanIndian, raceAsian: @demographic.raceAsian, raceBlack: @demographic.raceBlack, raceDidNotProvide: @demographic.raceDidNotProvide, raceHawaiian: @demographic.raceHawaiian, raceHispanic: @demographic.raceHispanic, raceWhite: @demographic.raceWhite, stateOfBirth: @demographic.stateOfBirth } }
    assert_redirected_to demographic_url(@demographic)
  end

  test "should destroy demographic" do
    assert_difference("Demographic.count", -1) do
      delete demographic_url(@demographic)
    end

    assert_redirected_to demographics_url
  end
end
