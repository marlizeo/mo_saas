require 'test/unit'
require_relative 'history.rb'

class Foo
  attr_accessor_with_history :bar
end

class HistoryTest < Test::Unit::TestCase
  
  def test_1
    puts '*1'
    f = Foo.new
    puts '*2'
    f.bar = 1
    puts '*3'
    f.bar = 2
    puts '*4'
    puts f.bar
    puts '*5'
    print f.bar_history
    puts '*6'
  end
  
end