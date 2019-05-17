Judge Circle(moves: Str) -> (yes: Bool) {
    X := 0
    Y := 0

    moves @ ea {
        ea ? "L" { 
            X += 1 
        } "R" { 
            X -= 1 
        } "U" { 
            Y += 1 
        } "D" { 
            Y -= 1 
        }
    }
    
    <- ( X == 0 & Y == 0 )
}