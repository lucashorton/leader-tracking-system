require "application_system_test_case"

class LeadersTest < ApplicationSystemTestCase
  setup do
    @leader = leaders(:one)
  end

  test "visiting the index" do
    visit leaders_url
    assert_selector "h1", text: "Leaders"
  end

  test "should create leader" do
    visit leaders_url
    click_on "New leader"

    fill_in "First name", with: @leader.first_name
    fill_in "Last name", with: @leader.last_name
    fill_in "Middle name", with: @leader.middle_name
    fill_in "Other names", with: @leader.other_names
    fill_in "Preferred name", with: @leader.preferred_name
    fill_in "Pronouns", with: @leader.pronouns
    fill_in "Self identified gender", with: @leader.self_identified_gender
    fill_in "Suffix", with: @leader.suffix
    click_on "Create Leader"

    assert_text "Leader was successfully created"
    click_on "Back"
  end

  test "should update Leader" do
    visit leader_url(@leader)
    click_on "Edit this leader", match: :first

    fill_in "First name", with: @leader.first_name
    fill_in "Last name", with: @leader.last_name
    fill_in "Middle name", with: @leader.middle_name
    fill_in "Other names", with: @leader.other_names
    fill_in "Preferred name", with: @leader.preferred_name
    fill_in "Pronouns", with: @leader.pronouns
    fill_in "Self identified gender", with: @leader.self_identified_gender
    fill_in "Suffix", with: @leader.suffix
    click_on "Update Leader"

    assert_text "Leader was successfully updated"
    click_on "Back"
  end

  test "should destroy Leader" do
    visit leader_url(@leader)
    click_on "Destroy this leader", match: :first

    assert_text "Leader was successfully destroyed"
  end
end
