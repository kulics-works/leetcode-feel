FlipAndInvertImage(a: [][]I32) -> (v: [][]I32) {
    reverse(numbers: []I32) -> (v: []I32) {
        v := []I32{}
        [numbers.Len-1 >= 0] @ i {
            v += 1 - numbers[i]
        }
        <- (v)
    }

    a @ [i]v {
        a[i] = reverse(v)
    }
    <- (a)
}
