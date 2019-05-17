Two Sum(nums: []Int) -> (v: []Int) {
    Hashmap := [Int]Int{}
    nums @ [i]v {
        Temp := target - v
        ? Hashmap.has key(Temp) {
            <- ( []Int{i, Hashmap[Temp]} )
        } _ {
            Hashmap[v] = i
        }
    }
    <- (())
}
