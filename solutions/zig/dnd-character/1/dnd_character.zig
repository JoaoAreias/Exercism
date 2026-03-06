const std = @import("std");
var prng = std.rand.DefaultPrng.init(42);
const rand = prng.random();

pub fn modifier(score: i8) i8 {
    return @divFloor(score - 10, 2);
}

pub fn ability() i8 {
    var min: i8 = std.math.maxInt(i8);
    var sum: i8 = 0;
    var i: i8 = 0;
    while (i < 4) : (i += 1) {
        const value = rand.intRangeAtMost(i8, 1, 6);
        sum += value;
        min = @min(min, value);
    }
    return sum - min;
}

pub const Character = struct {
    strength: i8,
    dexterity: i8,
    constitution: i8,
    intelligence: i8,
    wisdom: i8,
    charisma: i8,
    hitpoints: i8,

    pub fn init() Character {
        const constitution = ability();
        return .{
            .strength = ability(),
            .dexterity = ability(),
            .constitution = constitution,
            .intelligence = ability(),
            .wisdom = ability(),
            .charisma = ability(),
            .hitpoints = 10 + modifier(constitution),
        };
    }
};
