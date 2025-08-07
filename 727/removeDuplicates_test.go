package main

import (
	"testing"

	"github.com/google/go-cmp/cmp"
)

func TestRemoveDuplicates(t *testing.T) {
	tests := []struct {
		input    []int
		expected []int
	}{
		{[]int{1, 1, 2}, []int{1, 2}},
		{[]int{1, 1, 2, 3, 3}, []int{1, 2, 3}},
		{[]int{}, []int{}},
		{[]int{1}, []int{1}},
		{[]int{1, 1, 1, 1}, []int{1}},
		{[]int{1, 2, 3, 4}, []int{1, 2, 3, 4}},
	}

	for _, tt := range tests {
		nums := make([]int, len(tt.input))
		copy(nums, tt.input)

		k := removeDuplicates(nums)
		result := nums[:k]

		if !cmp.Equal(result, tt.expected) {
			t.Errorf("removeDuplicates(%v) = %v, want %v", tt.input, result, tt.expected)
		}
	}
}
