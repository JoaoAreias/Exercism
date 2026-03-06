const std = @import("std");

pub const Coordinate = struct {
    // This struct, as well as its fields and methods, needs to be implemented.
    x: f32,
    y: f32,
    
    pub fn init(x_coord: f32, y_coord: f32) Coordinate {
        return .{.x = x_coord, .y = y_coord};
    }
    pub fn score(self: Coordinate) usize {
        const r = std.math.sqrt(self.x * self.x + self.y * self.y);
        return if (r <= 1)
            10
            else if (r <= 5)
            5
            else if (r <= 10)
            1
            else
            0;
    }
};
