Solution. -> {
    subdomainVisits(cpdomains: [str]) -> (v: [str]) {
        results := [str]{}
        dic := [str]i32{}
        @ cpdomains {
            temp := ea.split(" ")
            count := temp[0].toI32()
            arr := temp[1].split(".")
            @ i -> v <- arr {
                records := arr[i<=].join(".")
                dic[records] += count
            }
        }
        @ k -> v <- dic {
            results += v.toStr() + " " + k
        }
        <- (results)
    }
}