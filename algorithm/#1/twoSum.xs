TwoSum(nums: [I32]) -> (v: [I32]) {
    hashmap := [[I32]I32]{}
    nums @ [i]v {
        temp := target - v
        ? hashmap.HasKey(temp) {
            <- ( [I32]{i, hashmap[temp]} )
        } _ {
            hashmap[v] = i
        }
    }
    <- (())
}
