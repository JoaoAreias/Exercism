pub const Planet = enum {
    mercury,
    venus,
    earth,
    mars,
    jupiter,
    saturn,
    uranus,
    neptune,
    
    pub fn age(self: Planet, seconds: usize) f64 {
        const earth_years: f64 = @as(f64, @floatFromInt(seconds)) / 31557600;
        return switch(self) {
            .mercury => earth_years / 0.2408467,
            .venus => earth_years / 0.61519726,
            .earth => earth_years,
            .mars => earth_years / 1.8808158,
            .jupiter => earth_years / 11.862615,
            .saturn => earth_years / 29.447498,
            .uranus => earth_years / 84.016846,
            .neptune => earth_years / 164.79132,
        };
    }
};
