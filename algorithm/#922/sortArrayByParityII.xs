Solution -> {
    sortArrayByParityII(A: [i32]) -> (v: [i32]) {
        arr := [i32]{A.count}
        A := 0
        B := 1
        @ ea <- A {
            ? ea & 1 ~= 1 {
                arr[A] = ea
                A += 2
            } _ {
                arr[B] = ea
                B += 2
            }
        }
        <- (arr)
    }
}