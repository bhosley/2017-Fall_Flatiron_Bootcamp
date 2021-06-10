def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  badge_array = []
  names.each do |name|
    badge_array << "Hello, my name is #{name}."
  end
  return badge_array
end

def assign_rooms(names)
  room_array = []
  names.each_with_index do |name, index|
    room_array << "Hello, #{name}! You'll be assigned to room #{index+1}!"
  end
  return room_array
end

def printer(names)
  batch_badge_creator(names).each do |badge|
    puts badge
  end
  assign_rooms(names).each do |room|
    puts room
  end
end
