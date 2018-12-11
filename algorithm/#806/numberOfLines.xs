Solution. -> {
    numberOfLines(widths: [i32], S: str) -> (v: [i32]) {
        Count := 0
        Line := 1

        @ S {
            width := widths[ea-'a']
            ? width + Count > 100 {
                Line += 1
                Count = width
            } _ {
                Count += width
            }
        }
        <- ( _{Line,Count})
    }
}