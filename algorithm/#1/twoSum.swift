class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        for (i, v) in nums.enumerated() {
            if let num = map[target - v] {
                return [i, num]
            } else {
                map[v] = i
            }
        }
        return []
    }
}