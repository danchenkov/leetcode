# frozen_string_literal: true

require_relative "../lib/remove_duplicates"

RSpec.describe "#remove_duplicates" do
  it "removes duplicates from a sorted array" do
    nums = [1, 1, 2]
    k = remove_duplicates(nums)
    expect(k).to eq(2)
    expect(nums[0...k]).to eq([1, 2])
  end

  it "returns the same array when no duplicates are present" do
    nums = [1, 2, 3]
    k = remove_duplicates(nums)
    expect(k).to eq(3)
    expect(nums[0...k]).to eq([1, 2, 3])
  end

  it "returns one element when all are duplicates" do
    nums = [2, 2, 2, 2]
    k = remove_duplicates(nums)
    expect(k).to eq(1)
    expect(nums[0...k]).to eq([2])
  end

  it "returns 0 for an empty array" do
    nums = []
    k = remove_duplicates(nums)
    expect(k).to eq(0)
    expect(nums).to eq([])
  end

  it "works with a large sorted array" do
    nums = (1..1000).to_a + [1000] * 500
    k = remove_duplicates(nums)
    expect(k).to eq(1000)
    expect(nums[0...k]).to eq((1..1000).to_a)
  end
end
