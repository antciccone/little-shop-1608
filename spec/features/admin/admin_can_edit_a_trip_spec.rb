require 'rails_helper'

feature "Admin trip editing" do
  scenario "An admin can edit an existing trip" do
    trip = create(:trip_with_category)
    user = create(:user)
    user.admin!

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit admin_trips_path

    click_link ("Edit")
    
    fill_in :Title, with: "Best trip ever!"
    fill_in :Price, with: "300"
    check "trip_retired"

    click_on "Update Trip"

    visit trip_path(trip)

    expect(page).to have_content("Best trip ever!")
    expect(page).to have_content("300")
    expect(page).to have_content("Trip Retired")
  end
end
