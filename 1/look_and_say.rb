def ant(n)
  s = '1'
  (1..n).each {s = next_line(s)}
  s
end

def next_line(s)
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
end

puts ant(10)

