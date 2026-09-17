const std = @import("std");
const mem = std.mem;

pub fn sum(allocator: mem.Allocator, factors: []const u32, limit: u32) !u64 {
    var multiples = std.AutoHashMap(u64, void).init(allocator);
    defer multiples.deinit();
    
    var result: u64 = 0;
    for (factors) |factor| {
        if (factor < 1) continue;
        var n = factor;
        while (n < limit): (n += factor) {
            if(multiples.contains(n)) continue;
            try multiples.put(n, {});
            result += n;
        }
    }
    return result;
}
