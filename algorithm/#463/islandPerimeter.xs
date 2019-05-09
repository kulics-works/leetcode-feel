IslandPerimeter(grid: [][]I32) -> (v: I32) {
    ? grid.Len == 0 {
        <- (0)
    }
    count := 0
    repeat := 0
    [0 < grid.Len] @ i {
        [0 < grid[i].Len] @ j {
            ? grid[i][j] == 1 {
                count += 1
                ? i >< 0 & grid[i-1][j] == 1 {
                    repeat += 1
                }
                ? j >< 0 & grid[i][j-1] == 1 {
                    repeat += 1
                }
            }
        }
    }
    <- (count * 4 - repeat * 2)
}
