pub fn factors(n: u64) -> Vec<u64> {
    let mut result: Vec<u64> = Vec::new();
    let mut number: u64 = n;

    while number > 1 {
        let factor = (2..=number).find(|x| number % x == 0 ).unwrap(); 
        result.push(factor);

        number /= factor;
    }

    result
}
