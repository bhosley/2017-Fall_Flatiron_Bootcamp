# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  ref, val = name_hash.first
  name_hash.each{|key, value|
    if value <= val
      ref = key
      val = value
    end}
  return ref
end
