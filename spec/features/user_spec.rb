require 'spec_helper'

feature 'Users' do

  scenario 'Users visits index and registers' do
    visit '/'
    expect(page).to have_content "Growlers to Go"
  end

  scenario 'User can register' do
    visit '/'
    click_on 'Register/Login'
    click_on 'Click here to register'
    fill_in 'user[first_name]', with: 'Mick'
    fill_in 'user[last_name]', with: 'Jagger'
    fill_in 'user[address]', with: '1035 Pearl St'
    fill_in 'user[city]', with: 'Boulder'
    fill_in 'user[state]', with: 'CO'
    fill_in 'user[zip]', with: '80302'

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
    fill_in 'user[first_name]', with: 'Mick'
    fill_in 'user[last_name]', with: 'Jagger'
    fill_in 'user[email]', with: 'mick@rollingstones.com'
    fill_in 'user[password]', with: 'stones'
    fill_in 'user[password_confirmation]', with: 'stones'
    click_on 'Submit'

    click_on 'Logout'

    click_on 'Register/Login'
    fill_in 'email', with: 'mick@rollingstones.com'
    fill_in 'password', with: 'stones'
    click_on 'Submit'
    expect(page).to have_content "Welcome, Mick Jagger"
  end

end