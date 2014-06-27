def create_admin(updated_attributes = {})
  default_attributes = {
    :name => "Keith Richards",
    :email => "keith@rollingstones.com",
    :password => "admin",
    :admin  => true
  }
  attributes = default_attributes.merge(updated_attributes)
  User.create(attributes)

end