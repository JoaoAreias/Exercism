pub fn collatz(n: u64) -> Option<u64> {
    let mut current = n;

    for i in 0..{
        match current {
            0 => break,
            1 => return Some(i),
            x if x % 2 == 0 => current /= 2,
            _ => current = current.checked_mul(3)?.checked_add(1)?
        }
    }
    None
}
