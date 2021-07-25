def sort_array_asc(array)
  array.sort{|a, b| a <=> b}
end

def sort_array_desc(array)
  array.sort{|a, b| b <=> a}
end

def sort_array_char_count(array)
  array.sort{|a, b| a.length <=> b.length}
end

def swap_elements_from_to(array, a, b)
  first = array[a]
  third = array[b]
  array[a] = third
  array[b] = first
  return array
end

def swap_elements(array)
  swap_elements_from_to(array, 1, 2)
end

def reverse_array(array)
  return array.reverse
end

def kesha_maker(array)
  kesha = []
  array.each{|word|
    letters = word.split("")
    letters[2] = "$"
    kesha << letters.join("")
  }
  return kesha
end

def find_a(array)
  array.select{|word| word.start_with?("a")}
end

def sum_array(array)
  sum = 0
  array.each{|i| sum += i}
  return sum
end

def add_s(array)
  array.each_with_index.collect{|element, index|
    if index == 1
      element
    else
      (element + "s")
    end
    }
end
