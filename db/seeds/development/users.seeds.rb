puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :email => 'john@lvh.me', :password => 'password', :password_confirmation => 'password'
