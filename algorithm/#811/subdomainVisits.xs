SubdomainVisits(cpdomains: [Str]) -> (v: [Str]) {
    results := [Str]{}
    dic := [[Str]I32]{}
    cpdomains @ ea {
        temp := ea.Split(" ")
        count := temp[0].ToI32()
        arr := temp[1].Split(".")
        arr @ [i]v {
            records := arr[i<=].Join(".")
            dic[records] += count
        }
    }
    dic @ [k]v {
        results += v.ToStr() + " " + k
    }
    <- (results)
}
