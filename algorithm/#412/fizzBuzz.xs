Solution -> {
    fizzBuzz(n: i32) -> (v: [str]) {
        arr := [str]{}

        @ ea <- [1<=n] {
            ? ea % 15 == 0 {
                arr += "FizzBuzz"
            } ea % 3 == 0 {
                arr += "Fizz"
            } ea % 5 == 0 {
                arr += "Buzz"
            } _ {
                arr += ea.toStr()
            }
        }
        <- (arr)
    }
}