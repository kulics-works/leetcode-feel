Fizz Buzz(n: Int) -> (v: []Str) {
    Arr := []Str{}

    [1 <= n] @ ea {
        ? ea % 15 == 0 {
            Arr += "FizzBuzz"
        } ea % 3 == 0 {
            Arr += "Fizz"
        } ea % 5 == 0 {
            Arr += "Buzz"
        } _ {
            Arr += ea.to Str()
        }
    }
    <- (Arr)
}