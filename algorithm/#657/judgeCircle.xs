Solution -> {
    JudgeCircle(moves: Str) -> (yes: Bl) {
        x := 0
        y := 0

        @ ea <- moves {
            ? ea -> "L" { 
                x += 1 
            } "R" { 
                x -= 1 
            } "U" { 
                y += 1 
            } "D" { 
                y -= 1 
            }
        }
        
        <- ( x == 0 & y == 0 )
    }
}