/**
 * @param {number[]} nums
 * @return {number}
 */
removeDuplicates = nums => {
  if (!nums.length) return 0;
  let k = 0;
  nums.slice(1).forEach(v => nums[k] !== v && (nums[++k] = v));
  return k + 1;
}

module.exports = removeDuplicates;
