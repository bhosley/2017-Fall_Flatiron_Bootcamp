def oxford_comma(array)
  case array.size
  when 1
    return array[0]
  when 2
    return array.join(" and ")
  else
    array[-1] = "and #{array[-1]}"
    return array.join(", ")
  end
end
