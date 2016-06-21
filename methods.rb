def girl_child
  puts "she has faced many challenges"
  puts "boy is the strongest weakness"
end

def boy_child(height)
  puts "girls love #{height} boys"
end

girl_child
boy_child("tall")

def marry_girl(color, figure = 8, education = "degree")
  puts "#{color},with #{education} and is size #{figure} is the right one!"
end
marry_girl("brown")
marry_girl("dark", 1, "certificate")
marry_girl("chocolate", 9)

def age_gap(husband, wife)
  diff = husband - wife
end

 normal_gap = age_gap(50,45)
 puts "their diff of #{normal_gap} is okay"

 abnormal_gap = age_gap(80, 20)
 puts "that diff of #{abnormal_gap} is totaally crazy!"

