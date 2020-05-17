SelfDividingNumbers : (left int, right int -> v []int) {
    Arr! : []int{}
    @ i : left .. right {
        TempStr! : i.to_str()
        @ v : TempStr {
            Temp! : 0
            ? v == '0' { 
                ~@
            } _ { 
                Temp = i % v.to_i32() 
            }

            ? Temp >< 0 {
                ~@
            }
        }
        Arr += i
    }
    <- Arr
}
