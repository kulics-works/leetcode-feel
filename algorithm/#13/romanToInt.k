romanToInt : (s str->v int) {
    # 使用哈希表，按照从大到小顺序排列
    hashmap : [str]int{["M"]=1000; ["CM"]=900; ["D"]=500; ["CD"]=400
                    ["C"]=100; ["XC"]=90; ["L"]=50; ["XL"]=40; ["X"]=10
                    ["IX"]=9; ["V"]=5; ["IV"]=4; ["I"]=1}
    weight : []str{"M";"CM";"D";"CD";"C";"XC";"L";"XL";"X";"IX";"V";"IV";"I"}
    res! : 0
    @ v : weight {
        length : v.len
        ? s.len < length {
            ->@
        }
        i : s[_~length]
        @ i == v {
            res += hashmap[v]
            s = s[length~_]
            ? s.len >= length {
                i = s[_~length]
            } _ {
                i = ""
            }
        }
    }
    <- res
}