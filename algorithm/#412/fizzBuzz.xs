Solution -> {
    FizzBuzz(n: I32) -> (v: [Str]) {
        arr := [Str]()

        @ ea <- [1<=n] {
            ? ea % 15 == 0 {
                arr += "FizzBuzz"
            } ea % 3 == 0 {
                arr += "Fizz"
            } ea % 5 == 0 {
                arr += "Buzz"
            } _ {
                arr += ea.ToStr()
            }
        }
        <- (arr)
    }
}