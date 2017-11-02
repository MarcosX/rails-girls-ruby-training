require 'minitest/autorun'
require_relative 'hello_world'

class HelloWorldTest < Minitest::Test

  def test_say_hello_to_world
    assert_equal 'Hello World!', HelloWorld.hello
  end

  def test_say_hello_to_ana
    assert_equal 'Hello Ana!', HelloWorld.hello('Ana')
  end

  def test_say_hello_to_no_someone
    assert_equal 'Hello ...someone!', HelloWorld.hello('')
  end

  def test_say_hello_to_no_empty_string
    assert_equal 'Hello ...someone!', HelloWorld.hello('    ')
  end
end
