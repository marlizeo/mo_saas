require 'test/unit'
require_relative 'palindrome.rb'

class PalindromeTest < Test::Unit::TestCase
  
  def test_1
    text = "A man, a plan, a canal -- Panama"
    assert_equal(true,self.palindrome?(text))
  end
  
  def test_2
    text = "Madam, I'm Adam!"
    assert_equal(true,self.palindrome?(text))
  end
  
  def test_3
    text = "Abracadabra"
    assert_equal(false,self.palindrome?(text))
  end
  
  def test_4
    text = 'A man, a plan, a canal -- Panama'
    words = self.count_words(text)
    assert_equal(3,words['a'])
    assert_equal(1,words['man'])
    assert_equal(1,words['canal'])
    assert_equal(1,words['panama'])
    assert_equal(1,words['plan'])
  end
  
  def test_5
    text = 'Doo bee doo bee doo'
    words = self.count_words(text)
    assert_equal(3,words['doo'])
    assert_equal(2,words['bee'])
  end
  
  
end
