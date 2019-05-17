Hamming Distance(x: Int, y: Int) -> (distance: Int) {
    Big := x
    ? Big < y {
        Big = y 
    }
    Z := x.xor(y)
    Count := 0
    
    I := 1
    @ I <= Big {
        ? I.and(Z) >< 0 {
            Count += 1
        }
        I = I.lft(1)
    }    

    <- (Count)
}