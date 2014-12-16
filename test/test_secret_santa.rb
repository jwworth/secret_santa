require 'minitest/autorun'
require 'secret_santa'

class SecretSantaTest < Minitest::Unit::TestCase
  def test_arrayify_input
    assert_equal ['jim', 'james', 'jack'], SecretSanta.arrayify_input('jim', 'james', 'jack')
  end

  def test_create_list
    assert_equal "List too short", SecretSanta.create_list(['jim', 'jack'])
    assert_equal "Please enter unique names", SecretSanta.create_list(['jim', 'jack', 'jim'])
  end
end
