require 'spec_helper'

feature 'Admin' do
before do
  create_user
  create_admin

end
  scenario 'Admin can view all customers' do
    log_admin_user_in

    click_on "View Customers"
    expect(page).to have_content "Mick Jagger"
    expect(page).to have_content "1035 Pearl St"
    expect(page).to have_content "Boulder"
  end

end