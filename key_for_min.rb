# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'

def key_for_min_value(name_hash)
  if name_hash.empty?
    return nil
  else
    lowest_num = 0
    selected_name = ""
    num_only = name_hash.collect do |name, num|
      num
    end
    sorted_nums = num_only.sort { |a, b| a<=>b }
    lowest_num = sorted_nums[0]
    name_hash.each do |name, num|
      if num == lowest_num
        selected_name = name
      end
    end
    selected_name
  end
end

hash = {:blake => 10, :ashley => 50, :adam => 17}
key_for_min_value(hash)
