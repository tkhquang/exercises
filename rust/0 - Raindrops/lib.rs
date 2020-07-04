pub fn raindrops(n: u32) -> String {
    let mut result: String = "".to_owned();

    if n % 3 == 0 {
      result.push_str("Pling");
    }

    if n % 5 == 0 {
      result.push_str("Plang");
    }

    if n % 7 == 0 {
      result.push_str("Plong");
    }

    if result == "" {
      result.push_str(&n.to_string());
    }
    
    return result;
}
