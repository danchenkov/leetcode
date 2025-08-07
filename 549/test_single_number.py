import pytest
from single_number import Solution

solution = Solution()

@pytest.mark.parametrize(
    "input_list, expected_number",
    [
        ([], None),
        ([2, 2], None),
        ([1, 2, 2, 3, 3, 4, 4], 1)
    ]
)
def test_single_number(input_list, expected_number):
    nums = list(input_list)
    number = solution.singleNumber(nums)
    assert number == expected_number
