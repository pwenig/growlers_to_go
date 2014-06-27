require 'spec_helper'

feature 'Users' do

  scenario 'Users visits index and registers' do
    visit '/'
    expect(page).to have_content "Welcome"
  end

  scenario 'User can register' do
    visit '/'
    click_on 'Register/Login'
    click_on 'Click here to register'
    fill_in 'user[name]', with: 'Mick Jagger'
    fill_in 'user[email]', with: 'mick@rollingstones.com'
    fill_in 'user[password]', with: 'stones'
    fill_in 'user[password_confirmation]', with: 'stones'
    click_on 'Submit'
    expect(page).to have_content "Welcome, Mick Jagger"
  end

  scenario 'User can login and logout' do
    visit '/'
    click_on 'Register/Login'
    click_on 'Click here to register'
    fill_in 'user[name]', with: 'Mick Jagger'
    fill_in 'user[email]', with: 'mick@rollingstones.com'
    fill_in 'user[password]', with: 'stones'
    fill_in 'user[password_confirmation]', with: 'stones'
    click_on 'Submit'

    click_on 'Logout'

    click_on 'Register/Login'
    fill_in 'email', with: 'mick@rollingstones.com'
    fill_in 'password', with: 'stones'
    click_on 'Submit'
    expect(page).to have_content "Welcome mick@rollingstones.com"
  end

end