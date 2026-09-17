pub fn twoFer(buffer: []u8, name: ?[]const u8) anyerror![]u8 {
    var idx: usize = 0;
    
    for ("One for ") |c| {
        buffer[idx] = c;
        idx += 1;
    }
    for (name orelse "you") |c| {
        buffer[idx] = c;
        idx += 1;
    }

    for (", one for me.") |c| {
        buffer[idx] = c;
        idx += 1;
    }
    return buffer[0..idx];
}
