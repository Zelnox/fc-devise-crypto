require 'test_helper'

class DudeTest < ActiveSupport::TestCase
  test "create a valid duder should increase duder count" do
    assert_difference "Dude.count", 1 do
      duder = create(:dude, :email => "duder@example.com", :password => "12345678", :password_confirmation => "12345678")
      assert duder.valid?
      puts "~~~~~\n"
      puts "email:"
      puts "\t#{duder.email}"
      puts "password (submitted):"
      puts "\t#{duder.password}"
      puts "encrypted_password (persisted):"
      puts "\t#{duder.encrypted_password}"
      puts "salt:"
      puts "\t#{BCrypt::Password.new(duder.encrypted_password).salt}"
      puts "~~~~~\n"
    end
  end
end
