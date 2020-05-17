NumberOfLines : (widths []int, s str -> v []int) {
    Count! : 0
    Line! : 1

    @ ea : s {
        Width! : widths[ea-'a']
        ? Width + Count > 100 {
            Line += 1
            Count = Width
        } _ {
            Count += Width
        }
    }
    <- {Line; Count}
}
