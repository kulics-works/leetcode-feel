Sort Array By Parity II(a: []Int) -> (v: []Int) {
    Arr := <[]Int>(a.len)
    IA := 0
    IB := 1
    IA @ ea {
        ? ea & 1 >< 1 {
            Arr[IA] = ea
            IA += 2
        } _ {
            Arr[IB] = ea
            IB += 2
        }
    }
    <- (Arr)
}
