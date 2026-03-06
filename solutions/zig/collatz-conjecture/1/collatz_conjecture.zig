// Please implement the `ComputationError.IllegalArgument` error.
pub const ComputationError = error{
    IllegalArgument
};

pub fn steps(number: usize) ComputationError!usize {
    if (number <= 0) {
        return ComputationError.IllegalArgument;
    }
    var n: usize = 0;
    var _number = number;
    while (_number != 1) {
        if (_number % 2 == 0) {
            _number = _number / 2;
        } else {
            _number = 3 * _number + 1;
        }
        n += 1;
    }
    return n;
}
