package l727

func removeDuplicates(nums []int) (k int) {
    if len(nums) <= 1 { return len(nums) }
    for _, v := range nums[1:] {
        if nums[k] != v { k++; nums[k] = v; }
    }
    return k + 1
}