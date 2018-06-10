s = '1'
(1..10).each do |line|
  length = 1
  head = s[0]
  result = ' '
  (1...s.size).each do |i|
    if s[i] == head
      length += 1
    else
      result << length.to_s
      result << head
      length = 1
      head = s[i]
    end
  end
  result << length.to_s
  result << head
  s = result
end
puts s
