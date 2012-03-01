public

def palindrome?(string)
  return string.downcase.reverse.gsub(/[^[:alnum:]]/,'') == string.downcase.gsub(/[^[:alnum:]]/,'')
end

def count_words(string)
  
  cleanstr = string.gsub(/[^a-zA-Z] /,' ').downcase
  
  array = cleanstr.split(/ /)
  
  result = Hash[*array.collect{|bob| [bob, cleanstr.scan(/\b#{bob}\b/).size]}.flatten]
  
  return result
end




