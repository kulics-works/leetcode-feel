Solution. -> {
    hammingDistance(x: i32, y: i32) -> (distance: i32) {
        Big := x
        ? Big < y {
            Big = y 
        }
        z := x.xor(y)
        Count := 0
        
        I := 1
        @ ? I <= Big {
            ? I.and(z) ~= 0 {
                Count += 1
            }
            I = I.lft(1)
        }    

        <- (Count)
    }
}