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
    expect(page).to have_css('img', visible:'image.png')
  end

  scenario 'admin can edit product listing' do
    log_admin_user_in
    add_product

    click_on 'Pale Ale'
    click_on 'Edit'
    fill_in 'product[name]', with: 'Lager'
    fill_in 'product[description]', with: 'This clear, crisp, dry Lager is our signature.'
    click_on 'Submit'
    expect(page).to have_content "Lager"
    expect(page).to have_content "This clear, crisp, dry Lager is our signature."

  end

  scenario 'admin can delete product listing' do
    log_admin_user_in

    add_product

    click_on 'Pale Ale'
    click_on 'Edit'
    click_on 'Delete'
    expect(page).to_not have_content 'Pale Ale'
  end
end
