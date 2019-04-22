SubdomainVisits(cpdomains: [Str]) -> (v: [Str]) {
    results := [Str]()
    dic := [[Str]I32]()
    @ ea <- cpdomains {
        temp := ea.Split(" ")
        count := temp[0].ToI32()
        arr := temp[1].Split(".")
        @ [i]v <- arr {
            records := arr[i<=].Join(".")
            dic[records] += count
        }
    }
    @ [k]v <- dic {
        results += v.ToStr() + " " + k
    }
    <- (results)
}
