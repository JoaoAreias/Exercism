const std = @import("std");
const max_prime = 10000;

pub fn primes(buffer: []u32, limit: u32) []u32 {
    if (limit < 2)
        return &[_]u32{};
    
    var bitset = std
            .bit_set
            .ArrayBitSet(u32, max_prime)
            .initFull();

    var i: u32 = 3;
    var idx: u32 = 1;
    const sqrt_limit = std.math.sqrt(limit);
    
    buffer[0] = 2;
    while(i <= sqrt_limit): (i += 2) {
        // Skips if number is not prime
        if (!bitset.isSet(i))
            continue;

        buffer[idx] = i;
        idx += 1;
        var j = 2 * i;
        while (j <= limit) : (j += i) {
            bitset.unset(j);
        }
    }

    while (i <= limit) : (i += 2) {
        if (!bitset.isSet(i))
            continue;
        
        buffer[idx] = i;
        idx += 1;
    }
    
    return buffer[0..idx];
}
