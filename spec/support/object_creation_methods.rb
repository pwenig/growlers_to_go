def create_admin(updated_attributes = {})
  default_attributes = {
    :first_name => "Keith",
    :last_name => "Richards",
    :email => "keith@rollingstones.com",
    :password => "admin",
    :admin  => true
  }
  attributes = default_attributes.merge(updated_attributes)
  User.create(attributes)

end

def create_user(updated_attributes = {})
  default_attributes = {
    :first_name => "Mick",
    :last_name => "Jagger",
    :address => "1035 Pearl St",
    :city => "Boulder",
    :state => "CO",
    :zip => "80302",
    :email => "mick@rollingstones.com",
    :password => "stones"
  }
  attributes = default_attributes.merge(updated_attributes)
  User.create(attributes)
end


