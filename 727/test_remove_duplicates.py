import pytest
from remove_duplicates import remove_duplicates  # import from main.py

@pytest.mark.parametrize(
    "input_list, expected_length, expected_list",
    [
        ([], 0, []),                           # empty list
        ([1], 1, [1]),                         # single element
        ([2, 2, 2, 2], 1, [2]),                # all duplicates
        ([1, 2, 3, 4], 4, [1, 2, 3, 4]),       # no duplicates
        ([0, 0, 1, 1, 1, 2, 2, 3, 3, 4], 5, [0, 1, 2, 3, 4])  # mixed case
    ]
)
def test_remove_duplicates(input_list, expected_length, expected_list):
    nums = list(input_list)  # copy so original isn't mutated
    length = remove_duplicates(nums)
    assert length == expected_length
    assert nums[:length] == expected_list
