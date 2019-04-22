TwoSum(nums: [I32]) -> (v: [I32]) {
    hashmap := [[I32]I32]()
    @ [i]v <- nums {
        temp := target - v
        ? hashmap.HasKey(temp) {
            <- ( [I32]{i, hashmap[temp]} )
        } _ {
            hashmap[v] = i
        }
    }
    <- (nil)
}
