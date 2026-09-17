const std = @import("std");

pub fn encode(buffer: []u8, string: []const u8) []u8 {
    if (string.len == 0) return buffer[0..0];
    var stream = std.io.fixedBufferStream(buffer);
    var previous_letter: u8 = string[0];
    var count: u8 = 1;

    for (string[1..]) |letter| {
        if (letter == previous_letter) {
            count += 1;
            continue;
        }
        if (count > 1)
        stream.writer().print("{d}{c}", .{count, previous_letter}) catch unreachable
        else
        stream.writer().writeByte(previous_letter) catch unreachable;
        previous_letter = letter;
        count = 1;
    }
    if (count > 1)
    stream.writer().print("{d}{c}", .{count, previous_letter}) catch unreachable
    else
    stream.writer().writeByte(previous_letter) catch unreachable;
    return stream.getWritten();
}

pub fn decode(buffer: []u8, string: []const u8) []u8 {
    if (string.len == 0) return buffer[0..0];
    var stream = std.io.fixedBufferStream(buffer);
    var count: usize = 0;

    for (string) |letter| switch (letter) {
        '0'...'9' => count = 10 * count + (letter - '0'),
        else => {
            if (count == 0) count = 1;
            stream.writer().writeByteNTimes(letter, count) catch unreachable;
            count = 0;
        }
    };
    return stream.getWritten();
}
