require 'csv'
CSV.open('csv.txt').each do |p|
  p p
end

p = CSV.parse(File.read('csv.txt'))
puts p[0][0]
puts p[1][0]
puts p[2][0]

person = CSV.read('csv.txt')
laura = person.find { |p| p[0] =~/Laura/ }
laura[0] = "Laura Smith"

CSV.open('csv.txt', 'w') do |csv|
  p.each do |p|
    csv << person
  end
end
