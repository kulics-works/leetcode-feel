NumberOfLines(widths: [I32], s: Str) -> (v: [I32]) {
    count := 0
    line := 1

    s @ ea {
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
