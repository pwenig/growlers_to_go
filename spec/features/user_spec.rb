require 'spec_helper'

feature 'Users' do

  scenario 'Users visits index and registers' do
    visit '/'
    expect(page).to have_content "Welcome"
  end
end