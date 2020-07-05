pub fn reply(mut message: &str) -> &str {
    message = message.trim();

    let has_letters: bool = message.chars().any(char::is_alphabetic);
    let is_yelling: bool = has_letters && message.to_uppercase() == message;
    let is_question: bool = message.ends_with("?");

    match message {
      _ if is_yelling => {
          if is_question {
              "Calm down, I know what I'm doing!"
          } else {
              "Whoa, chill out!"
          }
      },
      _ if is_question => {
          "Sure."
      },
      _ if message.is_empty() => {
          "Fine. Be that way!"
      },
      _ => {
          "Whatever."
      }
    }
}
