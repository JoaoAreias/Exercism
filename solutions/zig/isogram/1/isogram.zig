const std = @import("std");

pub fn isIsogram(str: []const u8) bool {
    var bitset = std
        .bit_set
        .IntegerBitSet(26)
        .initEmpty();

    for (str) |c| {
        if (!std.ascii.isAlphabetic(c))
            continue;
        
        const num = std.ascii.toLower(c) - 'a';
        if (bitset.isSet(num))
            return false;
        bitset.set(num);
    }
    return true;
}
