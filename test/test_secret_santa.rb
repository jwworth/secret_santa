require 'minitest/autorun'
require 'secret_santa'

class SecretSantaTest < Minitest::Unit::TestCase
  def test_create_list
    assert_equal 'ERROR: List too short', SecretSanta.create_list([])
    assert_equal 'ERROR: List too short', SecretSanta.create_list(['jim'])
    assert_equal 'ERROR: List too short', SecretSanta.create_list(['jim', 'jack'])
    assert_equal 'ERROR: Please enter unique names', SecretSanta.create_list(['jim', 'jack', 'jim'])
  end
end
