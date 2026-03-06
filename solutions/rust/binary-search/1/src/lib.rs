use std::cmp::Ordering;

pub fn find(array: &[i32], key: i32) -> Option<usize> {
    let mut l = 0;
    let mut r = array.len();

    while l < r {
        let m = l + (r - l) / 2;
        match array[m].cmp(&key) {
            Ordering::Less => {l = m + 1;},
            Ordering::Greater => {r = m - 1;},
            Ordering::Equal => { return Some(m);}
        }
    }

    array.get(l)
        .and_then(|x| if *x == key {Some(l)} else {None})
}
