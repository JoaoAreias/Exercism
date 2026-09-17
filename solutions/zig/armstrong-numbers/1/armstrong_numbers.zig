const math = @import("std").math;

pub fn isArmstrongNumber(num: u128) bool {
    const n_digits = if (num == 0) 1 else math.log10_int(num) + 1;
    var num_cpy = num;
    var sum: u128 = 0;
    
    while (num_cpy != 0) {
        sum += math.pow(u128, num_cpy % 10, n_digits);
        num_cpy /= 10;
    }
    return num == sum; 
}
