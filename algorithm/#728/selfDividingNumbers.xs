Self Dividing Numbers(left: Int, right: Int) -> (v: []Int) {
    Arr := []Int{}
    [left <= right] @ i {
        TempStr := i.to Str()
        TempStr @ v {
            Temp := 0
            v ? '0' { 
                <- @ 
            } _ { 
                Temp = i % v.to Int() 
            }

            ? Temp >< 0 {
                <- @
            }
        }
        Arr += i
    }
    <- (Arr)
}
