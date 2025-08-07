from typing import List

class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        presort = {}
        for v in nums:
            if presort.get(v) is None: presort[v] = True
            else: presort[v] = False

        for single, true in presort.items():
            if true == True:
                return single