Solution -> {
    HammingDistance(x: I32, y: I32) -> (distance: I32) {
        big := x
        ? big < y {
            big = y 
        }
        z := x.Xor(y)
        count := 0
        
        i := 1
        @ i <= big {
            ? i.And(z) ~= 0 {
                count += 1
            }
            i = i.Lft(1)
        }    

        <- (count)
    }
}