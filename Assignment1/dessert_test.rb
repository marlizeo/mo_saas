require 'test/unit'
require_relative 'dessert.rb'

class DessertTest < Test::Unit::TestCase
  
  def test_1
    custard = Dessert.new('custard', 250)
    assert_equal('custard',  custard.name)
    assert_equal(250, custard.calories)
    assert_equal(false, custard.healty?)
    assert_equal(true, custard.delicious?)
    custard.calories = 150
    assert_equal(150, custard.calories)
    assert_equal(true, custard.healty?)
  end

  def test_2
    bean = JellyBean.new('jelly bean', 100, 'black licorice')
    assert_equal('jelly bean',  bean.name)
    assert_equal(100, bean.calories)
    assert_equal(true, bean.healty?)
    assert_equal(false, bean.delicious?) 
    bean.flavor= 'strawberry'
    assert_equal(true, bean.delicious?)  
  end
  
end