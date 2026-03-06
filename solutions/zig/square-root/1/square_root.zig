pub fn squareRoot(radicand: usize) usize {
    var l: usize = 0;
    var r: usize = radicand;
    var m: usize = l + (r - l) / 2;
    var sq_m: usize = m * m;

    while (sq_m != radicand) : (sq_m = m * m) {
        if (sq_m < radicand) {
            l = m + 1;
        } else {
            r = m;
        }
        m = l + (r - l) / 2;
    }
    return m;
}
