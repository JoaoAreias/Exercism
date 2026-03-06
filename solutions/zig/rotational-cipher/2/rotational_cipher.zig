const std = @import("std");

pub fn rotate(allocator: std.mem.Allocator, text: []const u8, shiftKey: u5) std.mem.Allocator.Error![]u8 {
    var output = try allocator.alloc(u8, text.len);
    for (text, 0..) |letter, i| {
        output[i] = switch (letter) {
            'a'...'z' => ((letter - 'a' + shiftKey) % 26) + 'a',
            'A'...'Z' => ((letter - 'A' + shiftKey) % 26) + 'A',
            else => letter,
        };
    }
    return output;
    
}
