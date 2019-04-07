Solution -> {
    FlipAndInvertImage(a: [[I32]]) -> (v: [[I32]]) {
        reverse(numbers: [I32]) -> (v: [I32]) {
            v := [I32]()
            @ i <- [numbers.Len-1 >= 0] {
                v += 1 - numbers[i]
            }
            <- (v)
        }

        @ [i]v <- a {
            a[i] = reverse(v)
        }
        <- (a)
    }
}