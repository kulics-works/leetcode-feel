Flip And Invert Image(a: [][]Int) -> (v: [][]Int) {
    Reverse(numbers: []Int) -> (v: []Int) {
        V := []Int{}
        [numbers.len-1 >= 0] @ i {
            V += 1 - numbers[i]
        }
        <- (V)
    }

    a @ [i]v {
        a[i] = Reverse(v)
    }
    <- (a)
}