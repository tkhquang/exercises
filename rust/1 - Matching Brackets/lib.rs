pub fn brackets_are_balanced(string: &str) -> bool {
    let mut stacks: Vec<char> = Vec::new();

    for c in string.chars() {
        match c {
            '{' => {
                stacks.push('}');
            },
            '[' => {
                stacks.push(']');
            },
            '(' => {
                stacks.push(')');
            },
            '}' | ']' | ')' => {
              if stacks.len() == 0 {
                  return false;
              }

              let head = stacks.pop().unwrap();

              if head != c {
                  return false;
              }
            },
            _ => {}
        }
    }

    stacks.len() == 0
}
