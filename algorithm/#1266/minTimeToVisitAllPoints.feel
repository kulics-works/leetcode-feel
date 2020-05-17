minTimeToVisitAllPoints : (points [][]int->v int) {
    length! : 0
    @ i : 0 ..< points.len {
        lx! : points[i][0] - points[i+1][0]
        ly! : points[i][1] - points[i+1][1]
        ? lx < 0 {
            lx = -lx
        }
        ? ly < 0 {
            ly = -ly
        }
        ? lx > ly {
            length += lx
        } _ {
            length += ly
        }
    }
    <- length
}