Solution {
    Library
}

twoSum (nums:[]i32)->(v:[]i32) {
    hashmap := [i32]i32.{}
    nums.@ i -> v {
        temp := target - v
        ? hashmap.hasKey.(temp) {
            <- ( {i, hashmap.[temp]} )
        } _ {
            hashmap.[v] = i
        }
    }
    <- (null)
}