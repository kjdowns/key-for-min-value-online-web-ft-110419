# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'
def key_for_min_value(name_hash)
  lowest_key = nil
  prev_value = nil
  name_hash.each do |key, value|
    binding.pry
    if !lowest_key && !prev_value
      lowest_key = key
      prev_value = value
    end
    if value < prev_value
      lowest_key = key
      prev_value = value
  end
  lowest_key
end

key_for_min_value({:blake => 10, :ashley => 50, :adam => 17})