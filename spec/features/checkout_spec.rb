require 'spec_helper'

feature 'Checkout' do

  scenario 'user can see charges page' do

    visit '/'
    click_on 'Register/Login'
    click_on 'Click here to register'
    fill_in 'user[name]', with: 'Mick Jagger'
    fill_in 'user[email]', with: 'mick@rollingstones.com'
    fill_in 'user[password]', with: 'stones'
    fill_in 'user[password_confirmation]', with: 'stones'
    click_on 'Submit'

    expect(page).to have_content 'Pay with Card'

  end
end