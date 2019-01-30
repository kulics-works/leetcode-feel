Solution. -> {
    flipAndInvertImage(A: [[i32]]) -> (v: [[i32]]) {
        reverse(numbers: [i32]) -> (v: [i32]) {
            v := [i32]{}
            @ i <- [numbers.count-1 >= 0] {
                v += 1 - numbers[i]
            }
            <- (v)
        }

        @ [i]v <- A {
            A[i] = reverse(v)
        }
        <- (A)
    }
}