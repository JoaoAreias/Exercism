
pub fn sieve_of_erastothenes(upper_bound: u32) -> Vec<u32> {
    let upper_bound = upper_bound as usize;
    let mut is_prime = vec![true; upper_bound  + 1];
    let mut primes = Vec::with_capacity(upper_bound);

    is_prime[0] = false;
    is_prime[1] = false;

    for i in 2..=upper_bound {
        if is_prime[i] {
            primes.push(i as u32);
            for n in is_prime.iter_mut().step_by(i) {
                *n = false;
            }
        }
    }

    primes
}

pub fn nth(n: u32) -> u32 {
    // Initial guess of the upper bound for the prime number
    let mut last = 14.max(4 * n * (n + 1).ilog10());
    // Makes sure `last` is odd, in case we need to iterate through it to add values on the list
    last += (last + 1) % 2;

    // Initialize the list of primes with the guess
    let mut primes = sieve_of_erastothenes(last);
    
    // If there aren't enough primes on the list, keep inserting until necessary
    while primes.len() <= n as usize {
        if primes.iter().any(|&p| last % p == 0) {
            last += 2;
        } else {
            primes.push(last);
        }
    }
    primes[n as usize]
}
