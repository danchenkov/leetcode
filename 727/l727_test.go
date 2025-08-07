package l727

import (
	"reflect"
	"testing"
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
		nums := append([]int(nil), tt.input...) // Copy to avoid mutating original
		k := removeDuplicates(nums)
		result := nums[:k]
		if result == nil {
			result = []int{}
		}
		if tt.expected == nil {
			tt.expected = []int{}
		}

		if !reflect.DeepEqual(result, tt.expected) {
			t.Errorf("removeDuplicates(%v) = %v, want %v", tt.input, result, tt.expected)
		}
	}
}
