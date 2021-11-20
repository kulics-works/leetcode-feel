func twoSum(nums []int, target int) []int {
	hashmap := make(map[int]int)
	for i, v := range nums {
		temp := target - v
		if j, ok := hashmap[temp]; ok {
			return []int{i, j}
		} else {
			hashmap[v] = i
		}
	}
	return nil
}