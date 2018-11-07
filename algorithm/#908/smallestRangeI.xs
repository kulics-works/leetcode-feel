Solution
{
    Library
}

smallestRangeI (A:[]i32,K:i32)->(v:i32)
{
    ? A.count == 0 
    {
        <- (0)
    }
    max := A.[0]
    min := A.[0]
    A.@
    {
        ? ea > max
        {
            max = ea
        }
        ? ea < min
        {
            min = ea
        }
    }
    ? max - min >= K * 2
    {
        <- (max - min - K * 2)
    }
    <- (0)
}