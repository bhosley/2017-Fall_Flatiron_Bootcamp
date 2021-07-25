katz_deli =[]

def line(deli)
  if deli.size == 0
    puts "The line is currently empty."
  else
    deli_line = []
    deli.each_with_index do |person, index|
      deli_line << "#{index+1}. #{person}"
    end
    puts "The line is currently: #{deli_line.join(" ")}"
  end
end

def take_a_number(deli, person)
  deli << person
  puts "Welcome, #{person}. You are number #{deli.size} in line."
end

def now_serving(deli)
  if deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    current = deli.shift()
    puts "Currently serving #{current}."
  end
end
