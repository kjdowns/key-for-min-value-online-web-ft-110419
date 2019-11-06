# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  lowest_key = nil
  prev_value = nil
  name_hash.each do |key, value|
    #binding.pry
    if !lowest_key && !prev_value
      lowest_key = key
      prev_value = value
    end
    if value < prev_value
      lowest_key = key
      prev_value = value
    end
  end
  lowest_key
end
