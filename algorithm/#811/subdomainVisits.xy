Solution
{
    Library
}

subdomainVisits (cpdomains:[]str)->(v:[]str)
{
    results := {:str}
    dic := {:str->i32}
    cpdomains.@
    {
        temp := ea.split.(" ")
        count := temp.[0].toI32.()
        arr := temp.[1].split.(".")
        arr.@ i -> v
        {
            records := arr.[i<=].join.(".")
            dic.[records] += count
        }
    }
    dic.@ k -> v
    {
        results += v.toStr.() + " " + k
    }
    <- (results)
}