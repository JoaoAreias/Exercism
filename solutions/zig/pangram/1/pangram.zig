pub fn isPangram(str: []const u8) bool {
    var appeared: u32 = 0;
    for (str) |letter| {
        if ('a' <= letter and letter <= 'z') {
            appeared |= (@as(u32, 1) << @intCast(letter - 'a'));
        } else if ('A' <= letter and letter <= 'Z'){
            appeared |= (@as(u32, 1) << @intCast(letter - 'A'));
        }

        if (appeared == 0b11111111111111111111111111)
            return true;
    }

    return false;
}
