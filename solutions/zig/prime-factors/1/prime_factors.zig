const std = @import("std");
const mem = std.mem;

pub fn factors(allocator: mem.Allocator, value: u64) mem.Allocator.Error![]u64 {
    var factor = std.ArrayList(u64).init(allocator);
    errdefer factor.deinit();

    var p: u64 = 2;
    var v = value;
    while (p * p <= v) : (p += 1){
        while (v % p == 0) : (v /= p)
            factor.append(p) catch unreachable;
    }
    if (v > 1) factor.append(v) catch unreachable;
    
    return factor.toOwnedSlice();
}
