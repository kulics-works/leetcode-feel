Solution -> {
    NumberOfLines(widths: [I32], s: Str) -> (v: [I32]) {
        count := 0
        line := 1

        @ ea <- s {
            width := widths[ea-'a']
            ? width + count > 100 {
                line += 1
                count = width
            } _ {
                count += width
            }
        }
        <- ({line, count})
    }
}