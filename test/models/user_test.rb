require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "test user default distribution_option equal to weekly" do
  	assert_equal(User.new(:email => 'sweetjohn161@gmail.com', :encrypted_password => 'q2ejokee').distribution_option, 'weekly')
  end
end
