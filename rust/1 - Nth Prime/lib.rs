pub fn nth(n: u32) -> u32 {
    let mut primes: Vec<u32> = Vec::new();
    primes.push(2);

    while primes.len() <= n as usize {
        let mut next_prime = primes[primes.len() - 1] + 1;

        while !is_prime(next_prime) {
            next_prime += 1;
        }

        primes.push(next_prime);

    }

    primes.pop().unwrap()
}

fn is_prime(n: u32) -> bool {
    for i in 2..n {
        if n % i == 0 {
            return false;
        }
    }

    true
}
