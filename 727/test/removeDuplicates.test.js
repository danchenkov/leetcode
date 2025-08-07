const removeDuplicates = require('../src/removeDuplicates');

describe('removeDuplicates', () => {
	test.each([
		{ input: [1, 1, 2], expectedLength: 2, expectedArray: [1, 2] },
		{ input: [0, 0, 1, 1, 1, 2, 2, 3, 3, 4], expectedLength: 5, expectedArray: [0, 1, 2, 3, 4] },
		{ input: [1], expectedLength: 1, expectedArray: [1] },
		{ input: [], expectedLength: 0, expectedArray: [] },
		{ input: [1, 2, 3, 4, 5], expectedLength: 5, expectedArray: [1, 2, 3, 4, 5] }
	])('removes duplicates correctly for input: $input', ({ input, expectedLength, expectedArray }) => {
		let nums = [...input];
		let resultLength = removeDuplicates(nums);
		let resultArray = nums.slice(0, resultLength);

		expect(resultLength).toBe(expectedLength);
		expect(resultArray).toEqual(expectedArray);
	});
});