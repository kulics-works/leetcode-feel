Solution. -> {
    shortestToChar(S: str, C: chr) -> (v: [i32]) {
        Flag := -S.count
        arr := [i32]{S.count}
        @ [i]v <- S {
            ? v == C {
                Flag = i
            }
            arr[i] = i - Flag
        }
        Flag = S.count * 2
        @ i <- [S.count-1 >= 0] {
            ? S[i] == C {
                Flag = i
            }
            arr[i] = min(Flag-i, arr[i])
        }
        <- (arr)
    }

    min(a: i32, b: i32) -> (v: i32) {
        ? a < b {
            <- (a)
        }
        <- (b)
    }
}