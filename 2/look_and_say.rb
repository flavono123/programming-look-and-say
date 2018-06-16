def ant(n)
  s = '1'
  (1..n).each {s = next_line(s)}
  s
end

def next_line(s) # `next' is a keyword
  s.gsub(/(.)\1*/) {|g| "#{g.size}#{g[0]}"}
end

puts ant(10)

