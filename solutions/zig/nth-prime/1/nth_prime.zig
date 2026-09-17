const std = @import("std");
const mem = std.mem;

pub fn prime(allocator: mem.Allocator, number: usize) !usize {
    var list = std.ArrayList(usize).init(allocator);
    defer list.deinit();

    list.append(2) catch unreachable;
    var n: usize = 3;

    while (list.items.len < number) : (n += 2) {
        for (list.items) |p| {
            if (n % p == 0) break;
            if (n < p * p) {
                list.append(n) catch unreachable;
                break;
            }
        }
    }
    return list.items[number - 1];
}
