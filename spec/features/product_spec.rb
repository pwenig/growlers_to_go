require 'spec_helper'

feature 'Products' do

  scenario 'admin can add products' do
    create_admin
    visit '/'
    click_on 'Register/Login'

    fill_in 'email', with: 'keith@rollingstones.com'
    fill_in 'password', with: 'admin'
    click_on 'Submit'

    click_on 'Add Products'

    fill_in 'product[name]', with: 'Pale Ale'
    fill_in 'product[description]', with: 'This clear, crisp, dry Pale Ale is our signature.'
    fill_in 'product[abv]', with: '5.8%'

    attach_file('product[image]', Rails.root.join('spec/images/image.png'))
    click_on 'Submit'

    expect(page).to have_content "Pale Ale"
    expect(page).to have_content "This clear, crisp, dry Pale Ale is our signature."
    expect(page).to have_content "5.8%"
    expect(page).to have_css('img', visible:'image.png')

  end
end
