Number Of Lines(widths: []Int, s: Str) -> (v: []Int) {
    Count := 0
    Line := 1

    s @ ea {
        Width := widths[ea-'a']
        ? Width + Count > 100 {
            Line += 1
            Count = Width
        } _ {
            Count += Width
        }
    }
    <- ({Line, Count})
}