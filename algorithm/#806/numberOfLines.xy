Solution
{
    Library
}

numberOfLines (widths:[]i32,S:str)->(v:[]i32)
{
    count := 0
    line := 1

    S.@ 
    {
        width := widths.[ea-'a']
        ? width + count > 100 {
            line += 1
            count = width
        }
        ?
        {
            count += width
        }
    }
    <- ( {line,count})
}