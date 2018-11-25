Solution{
    Library
}

twoSum (nums:[i32])->(v:[i32]){
    hashmap := [i32->i32]{}
    @ i -> v <- nums {
        temp := target - v
        ? hashmap.hasKey(temp) {
            <- ( [i32]{<- i, hashmap[temp]} )
        } _ {
            hashmap[v] = i
        }
    }
    <- (nil)
}