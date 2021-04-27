require "application_system_test_case"

class Membership::ChurchServicesTest < ApplicationSystemTestCase
  setup do
    @membership_church_service = membership_church_services(:one)
  end

  test "visiting the index" do
    visit membership_church_services_url
    assert_selector "h1", text: "Membership/Church Services"
  end

  test "creating a Church service" do
    visit membership_church_services_url
    click_on "New Membership/Church Service"

    fill_in "Date", with: @membership_church_service.date
    click_on "Create Church service"

    assert_text "Church service was successfully created"
    click_on "Back"
  end

  test "updating a Church service" do
    visit membership_church_services_url
    click_on "Edit", match: :first

    fill_in "Date", with: @membership_church_service.date
    click_on "Update Church service"

    assert_text "Church service was successfully updated"
    click_on "Back"
  end

  test "destroying a Church service" do
    visit membership_church_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Church service was successfully destroyed"
  end
end
