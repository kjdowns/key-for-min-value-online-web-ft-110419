# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  lowest_key = nil
  prev_value = nil
  if name_hash
    name_hash.each do |key, value|
      lowest_key = key if !lowest_key
      prev_value = value if !prev_value
      if value < prev_value
        lowest_key = key
      end
      prev_value = value
    end
    lowest_key
  else
    return nil 
  end
end