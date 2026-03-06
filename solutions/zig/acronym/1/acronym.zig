const std = @import("std");
const mem = std.mem;

pub fn abbreviate(allocator: mem.Allocator, words: []const u8) mem.Allocator.Error![]u8 {
    var list = std.ArrayList(u8).init(allocator);
    errdefer list.deinit();
    var new_word = true;

    for (words) |letter| switch (letter) {
        ' ', '-', '_' => new_word = true,
        'a'...'z', 'A'...'Z' => {
            if(!new_word) continue;
            try list.append(std.ascii.toUpper(letter));
            new_word = false;
        },
        else => continue
    };

    return list.toOwnedSlice();
}
