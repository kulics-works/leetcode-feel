Solution -> {
    islandPerimeter(grid: [[i32]]) -> (v: i32) {
        ? grid.count == 0 {
            <- (0)
        }
        Count := 0
        Repeat := 0
        @ i <- [0<grid.count] {
            @ j <- [0<grid[i].count] {
                ? grid[i][j] == 1 {
                    Count += 1
                    ? i ~= 0 & grid[i-1][j] == 1 {
                        Repeat += 1
                    }
                    ? j ~= 0 & grid[i][j-1] == 1 {
                        Repeat += 1
                    }
                }
            }
        }
        <- (Count * 4 - Repeat * 2)
    }
}