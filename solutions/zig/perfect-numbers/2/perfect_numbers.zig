const std = @import("std");

pub const Classification = enum {
    deficient,
    perfect,
    abundant,
};

/// Asserts that `n` is nonzero.
pub fn classify(n: u64) Classification {
    if (n == 1) return .deficient;
    var sum: u64 = 1;
    const done: u64 = @intFromFloat(std.math.sqrt(@as(f64, @floatFromInt(n))));

    for (2..done + 1) |i| {
        if (n % i == 0 and i*i != n) {
            sum += i;
            sum += n / i;
        }
    }
    if(done * done == n)
        sum += done;

    return switch(std.math.order(n, sum)) {
        .eq => .perfect,
        .gt => .deficient,
        .lt => .abundant,
    };
}
