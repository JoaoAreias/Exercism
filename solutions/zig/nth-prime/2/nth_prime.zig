const std = @import("std");
const mem = std.mem;

// Generates prime numbers at compile time so 
// they can be analysed at run time
const primes = blk: {
    // Largest prime tested
    const buffer_size = 10001;
    // Ge the largest number that we want to test as prime
    const max_prime = 104743;

    @setEvalBranchQuota(
        max_prime
        // Complexity of the sieve of Eratosthenes
        * std.math.log2(std.math.log2(max_prime))
        // Safety margin since big O is proportional to value
        * 10
    );
    var primes_buffer: [buffer_size]usize = undefined;
    const len = sieve(&primes_buffer, max_prime);
    break :blk .{ primes_buffer, len };
};

fn sieve(comptime buffer: []usize, comptime limit: usize) usize {
    if (limit < 2)
        return buffer[0..0];
    
    var bitset = std.StaticBitSet(limit + 1).initFull();
    var n: usize = 3;
    var i: usize = 1;

    buffer[0] = 2;
    while (n <= limit) : (n += 2) {
        if (!bitset.isSet(n))
            continue;
        
        buffer[i] = n;
        i += 1;

        var j = n * n;
        while (j <= limit) : (j += n) {
            bitset.unset(j);
        }
    }
    return i;
}

pub fn prime(allocator: mem.Allocator, number: usize) !usize {
    _ = allocator;
    if (number-1 >= primes[1]) {
        @panic("no"); // or return an error
    }
    return primes[0][number-1];
}