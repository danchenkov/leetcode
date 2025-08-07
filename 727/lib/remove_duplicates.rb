# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.empty?
  k = 0
  nums[1..].each do |v|
    if nums[k] != v
      k += 1
      nums[k] = v
    end
  end
  k + 1
end
