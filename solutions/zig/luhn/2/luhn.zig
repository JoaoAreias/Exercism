pub fn isValid(s: []const u8) bool {    
    var sum: u64 = 0;
    var idx: usize = 1;
    var n_idx: u64 = 0;

    while (idx <= s.len) : (idx += 1) {
        var c = s[s.len - idx];
        switch (c) {
            '0'...'9' => {
                c -= '0';
                if (n_idx % 2 == 1) {
                    c = 2 * c; 
                    sum += if (c > 9) c - 9 else c;
                }
                else 
                    sum += c;
                n_idx += 1;
            },
            ' ' => continue,
            else => return false,
        }
    }
    if (n_idx <= 1)
        return false;
    
    return sum % 10 == 0;
}
