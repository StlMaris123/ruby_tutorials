require 'csv'
CSV.open('csv.txt').each do |p|
  p p
end

p = CSV.parse(File.read('csv.txt'))
puts p[0][0]
puts p[1][0]
puts p[2][0]
