require "application_system_test_case"

class DemographicsTest < ApplicationSystemTestCase
  setup do
    @demographic = demographics(:one)
  end

  test "visiting the index" do
    visit demographics_url
    assert_selector "h1", text: "Demographics"
  end

  test "should create demographic" do
    visit demographics_url
    click_on "New demographic"

    fill_in "Cityofbirth", with: @demographic.cityOfBirth
    fill_in "Currenthouseholdincome", with: @demographic.currentHouseholdIncome
    fill_in "Dateofbirth", with: @demographic.dateOfBirth
    fill_in "Gender", with: @demographic.gender
    fill_in "Language", with: @demographic.language
    fill_in "Leader", with: @demographic.leader_id
    fill_in "Military", with: @demographic.military
    fill_in "Parent1educationallevel", with: @demographic.parent1EducationalLevel
    fill_in "Parent2educationallevel", with: @demographic.parent2EducationalLevel
    check "Raceamericanindian" if @demographic.raceAmericanIndian
    check "Raceasian" if @demographic.raceAsian
    check "Raceblack" if @demographic.raceBlack
    check "Racedidnotprovide" if @demographic.raceDidNotProvide
    check "Racehawaiian" if @demographic.raceHawaiian
    check "Racehispanic" if @demographic.raceHispanic
    check "Racewhite" if @demographic.raceWhite
    fill_in "Stateofbirth", with: @demographic.stateOfBirth
    click_on "Create Demographic"

    assert_text "Demographic was successfully created"
    click_on "Back"
  end

  test "should update Demographic" do
    visit demographic_url(@demographic)
    click_on "Edit this demographic", match: :first

    fill_in "Cityofbirth", with: @demographic.cityOfBirth
    fill_in "Currenthouseholdincome", with: @demographic.currentHouseholdIncome
    fill_in "Dateofbirth", with: @demographic.dateOfBirth.to_s
    fill_in "Gender", with: @demographic.gender
    fill_in "Language", with: @demographic.language
    fill_in "Leader", with: @demographic.leader_id
    fill_in "Military", with: @demographic.military
    fill_in "Parent1educationallevel", with: @demographic.parent1EducationalLevel
    fill_in "Parent2educationallevel", with: @demographic.parent2EducationalLevel
    check "Raceamericanindian" if @demographic.raceAmericanIndian
    check "Raceasian" if @demographic.raceAsian
    check "Raceblack" if @demographic.raceBlack
    check "Racedidnotprovide" if @demographic.raceDidNotProvide
    check "Racehawaiian" if @demographic.raceHawaiian
    check "Racehispanic" if @demographic.raceHispanic
    check "Racewhite" if @demographic.raceWhite
    fill_in "Stateofbirth", with: @demographic.stateOfBirth
    click_on "Update Demographic"

    assert_text "Demographic was successfully updated"
    click_on "Back"
  end

  test "should destroy Demographic" do
    visit demographic_url(@demographic)
    click_on "Destroy this demographic", match: :first

    assert_text "Demographic was successfully destroyed"
  end
end
