const std = @import("std");

pub fn rotate(allocator: std.mem.Allocator, text: []const u8, shiftKey: u5) std.mem.Allocator.Error![]u8 {
    var output = try allocator.alloc(u8, text.len);
    for (text, 0..) |letter, i| {
        switch (letter) {
            'a'...'z' => output[i] = ((letter - 'a' + shiftKey) % 26) + 'a',
            'A'...'Z' => output[i] = ((letter - 'A' + shiftKey) % 26) + 'A',
            else => output[i] = letter,
        }
    }
    return output;
    
}
