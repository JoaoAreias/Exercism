// Take a look at the tests, you might have to change the function arguments
const std = @import("std");


pub fn binarySearch(comptime T: type, target: T, items: []const T) ?usize {
    var l: usize = 0;
    var r: usize = items.len;

    while (l < r) {
        const m: usize = l + (r - l) / 2;
        switch(std.math.order(target, items[m])) {
            .eq => return m,
            .lt => r = m,
            .gt => l = m + 1
        }
    }
    return null;
}
