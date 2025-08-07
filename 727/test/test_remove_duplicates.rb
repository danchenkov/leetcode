# frozen_string_literal: true

require "minitest/autorun"
require_relative "../lib/remove_duplicates"

class TestRemoveDuplicates < Minitest::Test
  def test_basic_case
    nums = [1, 1, 2]
    k = remove_duplicates(nums)
    assert_equal 2, k
    assert_equal [1, 2], nums[0...k]
  end

  def test_no_duplicates
    nums = [1, 2, 3]
    k = remove_duplicates(nums)
    assert_equal 3, k
    assert_equal [1, 2, 3], nums[0...k]
  end

  def test_all_duplicates
    nums = [2, 2, 2, 2]
    k = remove_duplicates(nums)
    assert_equal 1, k
    assert_equal [2], nums[0...k]
  end

  def test_empty_array
    nums = []
    k = remove_duplicates(nums)
    assert_equal 1, k, "LeetCode-style solutions assume at least one element — this will fail"
    # If you want to handle empty arrays differently, adjust the method
  end

  def test_large_sorted_array
    nums = (1..1000).to_a + [1000] * 500
    k = remove_duplicates(nums)
    assert_equal 1000, k
    assert_equal (1..1000).to_a, nums[0...k]
  end
end
