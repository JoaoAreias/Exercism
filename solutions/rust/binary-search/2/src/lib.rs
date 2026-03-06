use std::cmp::Ordering;

pub fn find(slice: &[i32], key: i32) -> Option<usize> {
    let mut left = 0;
    let mut right = slice.len(); // Exclusive upper bound

    while left < right {
        let mid = (left + right) >> 1;

        match slice[mid].cmp(&key) {
            Ordering::Less => left = mid + 1,
            Ordering::Greater => right = mid,
            Ordering::Equal => return Some(mid),
        }
    }
    // After the loop, if the key was not found, return None.
    None
}