convert : (s str, numRows int->v str) {
    ? numRows == 1 {
        <- s
    }
    res! : [][]byte(numRows)
    direct! : true
    n! : 0
    @ v : s {
        res[n] += v
        ? n == numRows-1 {
            direct = false
        } n == 0 {
            direct = true
        }
        ? direct {
            n += 1
        } _ {
            n -= 1
        }
    }
    @ i : 1 ..< numRows {
        res[0] += res[i]
    }
    <- res[0].to_str()
}