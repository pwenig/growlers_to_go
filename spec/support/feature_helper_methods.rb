def log_admin_user_in
  visit '/'
  click_on 'Register/Login'
  fill_in 'email', with: 'keith@rollingstones.com'
  fill_in 'password', with: 'admin'
  click_on 'Submit'
end

def add_product
  click_on 'Add Products'
  fill_in 'product[name]', with: 'Pale Ale'
  fill_in 'product[description]', with: 'This clear, crisp, dry Pale Ale is our signature.'
  fill_in 'product[abv]', with: '5.8%'
  attach_file('product[image]', Rails.root.join('spec/images/image.png'))
  click_on 'Submit'
end