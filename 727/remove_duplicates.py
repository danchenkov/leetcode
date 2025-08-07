def remove_duplicates(nums):
    if len(nums) <= 1:
        return len(nums)

    k = 0
    for v in nums[1:]:
        if nums[k] != v:
            k += 1
            nums[k] = v
    return k + 1
