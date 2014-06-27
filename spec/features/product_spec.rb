require 'spec_helper'

feature 'Products' do

  before :each do
    create_admin
  end

  scenario 'admin can add products' do
    log_admin_user_in

    add_product

    expect(page).to have_content "Pale Ale"
    expect(page).to have_content "This clear, crisp, dry Pale Ale is our signature."
    expect(page).to have_content "5.8%"
    expect(page).to have_css('img', visible:'image.png')
  end


end
