pub fn isValidIsbn10(s: []const u8) bool {
    var idx: u8 = 0;
    var sum: u16 = 0;
    for (s) |c| {
        switch (c) {
            '0'...'9' => {
                sum += (10 - idx) * (c - '0');
                idx += 1;
            },
            'x', 'X' => {
                if (idx != 9) 
                    return false;
                sum += 10;
                idx += 1;
            },
            '-' => continue,
            else => return false,
        }
    }
    if (idx != 10)
        return false;

    return sum % 11 == 0;
}
