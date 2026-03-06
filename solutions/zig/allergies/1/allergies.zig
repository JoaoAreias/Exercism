const std = @import("std");
const EnumSet = std.EnumSet;

pub const Allergen = enum {
    eggs,
    peanuts,
    shellfish,
    strawberries,
    tomatoes,
    chocolate,
    pollen,
    cats,
};

pub fn isAllergicTo(score: u8, allergen: Allergen) bool {
    return (score & (@as(u64, 1) << @intFromEnum(allergen))) > 0;
}

pub fn initAllergenSet(score: usize) EnumSet(Allergen) {
    var set = EnumSet(Allergen).initEmpty();
    var score_cpy = score;

    while (score_cpy != 0) {
        const allergy = @ctz(score_cpy);
        // Allergy over the highest value possible
        if (allergy >= @typeInfo(Allergen).Enum.fields.len) break;

        set.insert(@enumFromInt(allergy));
        score_cpy ^= @as(u64, 1) << @intCast(allergy);
    }
    return set;
}
