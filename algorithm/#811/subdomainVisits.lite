Subdomain Visits(cpdomains: []Str) -> (v: []Str) {
    Result := []Str{}
    TempDic := [Str]Int{}
    cpdomains @ ea {
        temp := ea.split(" ")
        count := temp[0].to Int()
        arr := temp[1].split(".")
        arr @ [i]v {
            records := arr[i<=].join(".")
            TempDic[records] += count
        }
    }
    TempDic @ [k]v {
        Result += v.to Str() + " " + k
    }
    <- (Result)
}
