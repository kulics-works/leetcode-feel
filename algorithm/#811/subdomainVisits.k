SubdomainVisits : (cpdomains []str -> v []str) {
    Result! : []str{}
    TempDic! : [str]int{}
    @ ea : cpdomains.. {
        temp! : ea.split(" ")
        count! : temp[0].to_i32()
        arr! : temp[1].split(".")
        @ [i]v : arr.. {
            records : arr[i~_].join(".")
            TempDic[records] += count
        }
    }
    @ [k]v : TempDic.. {
        Result += v.to_str() + " " + k
    }
    <- Result
}
