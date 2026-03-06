// Import the appropriate standard library and modules
const std = @import("std");
const mem = std.mem;


pub fn toRna(allocator: mem.Allocator, dna: []const u8) mem.Allocator.Error![]const u8 {
    var rna = try allocator.alloc(u8, dna.len);

    for (dna, 0..) |n, i| {
        rna[i] = switch(n) {
            'G' => 'C',
            'C' => 'G',
            'T' => 'A',
            'A' => 'U',
            else => ' '
        };
    }
    return rna;
}
